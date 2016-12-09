package Controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dto.MemDTO;
import dto.PubDTO;
import dto.PubPageDTO;
import service.PubService;

@Controller
public class PubController {
	private PubService service;
	private int currentPage;
	private PubPageDTO pubpdto;

	public PubController() {
	};

	public void setService(PubService service) {
		this.service = service;
	};

	// 랭킹 및 전체
	@RequestMapping("/lookat.do")
	public ModelAndView lookatMethod(PubPageDTO pv, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		MemDTO memem = (MemDTO)session.getAttribute("mem");
		try {
			List<PubDTO> qu = service.quickcount(memem.getId());
			for (int i = 0; i < qu.size(); i++) {
				if (qu.get(i).getP_mupload().contains("/")) {
					qu.get(i).setP_mupload(qu.get(i).getP_mupload().split("/")[0]);
				}
			}
			mav.addObject("quick",qu);
		} catch (Exception e) {
			System.out.println("lookatㅂㄷㅂㄷ");
		}
		// 랭킹 사진 출력
		// 별점순 등록된 펍 가져오기
		List<PubDTO> you = service.getProcess();
		for (int i = 0; i < you.size(); i++) {
			if (you.get(i).getP_mupload().contains("/")) {
				you.get(i).setP_mupload(you.get(i).getP_mupload().split("/")[0]);
			}
		}
		mav.addObject("aList", you);

		// 전체 펍 갯수 가져오기
		int totalRecord = service.countProcess();
		if (totalRecord >= 1) {
			if (pv.getCurrentPage() == 0)
				currentPage = 1;
			else
				currentPage = pv.getCurrentPage();

			pubpdto = new PubPageDTO(currentPage, totalRecord);

			// 전체 펍 4개씩 잘라서 가져오기
			List<PubDTO> you2 = service.listProcess(pubpdto);
			//ㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅ
			
			for (int i = 0; i < you2.size(); i++) {
				if (you2.get(i).getP_mupload().contains("/")) {
					you2.get(i).setP_mupload(you2.get(i).getP_mupload().split("/")[0]);
				}
			}
		
			
			mav.addObject("pv", pubpdto);
			mav.addObject("aList2", you2);

		}
		mav.setViewName("lookat");
		return mav;
	}

	// 전체 펍
	@RequestMapping("/lookat2.do")
	public @ResponseBody List<PubDTO> lookatMethod2(PubPageDTO pv) {
		int totalRecord = service.countProcess();
		currentPage = pv.getCurrentPage();
		pubpdto = new PubPageDTO(currentPage, totalRecord);
		
		List<PubDTO> you2 = service.listProcess(pubpdto);
		for (int i = 0; i < you2.size(); i++) {
			if (you2.get(i).getP_mupload().contains("/")) {
				you2.get(i).setP_mupload(you2.get(i).getP_mupload().split("/")[0]);
			}
			
		}
		System.out.println("1번"+you2.get(0).getStar().getS_stars());
		return you2;
	}

	// 업로드
	@RequestMapping(value = "/write.do", method = RequestMethod.GET)
	public ModelAndView pubupload2Method() {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("/write");
		return mav;
	}

	@RequestMapping(value = "/write.do", method = RequestMethod.POST)
	public String pubuploadMethod(PubDTO dto, HttpServletRequest request) throws Exception {
		MultipartFile[] file = dto.getFilename();

		String mup = "";

		if (file.length != 0) {
			for (int i = 0; i < dto.getFilename().length; i++) {
				String filename = file[i].getOriginalFilename();

				UUID random = UUID.randomUUID();
				String root = request.getSession().getServletContext().getRealPath("/");

				String saveDirectory = root + "temp" + File.separator;
				File fe = new File(saveDirectory);
				if (!fe.exists())
					fe.mkdir();

				File ff = new File(saveDirectory, random + "_" + filename);

				FileCopyUtils.copy(file[i].getInputStream(), new FileOutputStream(ff));

				if (i == 0) {
					mup += random + "_" + filename;
				} else {
					mup += "/" + random + "_" + filename;
				}

			}
		}
		dto.setP_mupload(mup);
		service.insertProcess(dto);

		// 다시 갈 페이지
		return "lookat";
	}// 업로드 끝

	// 검색
	@RequestMapping("/search.do")
	public @ResponseBody Map<String, Object> lookatMethod3(String search, PubPageDTO pv) {
		Map<String, Object> subjson = null;
		int seartotal = service.searcountProcess(search);

		currentPage = 1;

		pubpdto = new PubPageDTO(currentPage, seartotal);
		pubpdto.setSearch(search);

		List<PubDTO> you3 = service.listsearchProcess(pubpdto);

		for (int i = 0; i < you3.size(); i++) {
			if (you3.get(i).getP_mupload().contains("/")) {
				you3.get(i).setP_mupload(you3.get(i).getP_mupload().split("/")[0]);
			}
		}

		subjson = new HashMap<String, Object>();
		subjson.put("pv", pubpdto);
		subjson.put("you", you3);

		return subjson;
	}

	@RequestMapping("/search2.do")
	public @ResponseBody List<PubDTO> lookatMethod4(PubPageDTO pv) {
		String search = pubpdto.getSearch();
		int seartotal = service.searcountProcess(pubpdto.getSearch());
		currentPage = pv.getCurrentPage();
		pubpdto = new PubPageDTO(currentPage, seartotal);
		pubpdto.setSearch(search);

		List<PubDTO> you4 = service.listsearchProcess(pubpdto);

		for (int i = 0; i < you4.size(); i++) {
			if (you4.get(i).getP_mupload().contains("/")) {
				you4.get(i).setP_mupload(you4.get(i).getP_mupload().split("/")[0]);
			}
		}

		return you4;
	}

	@RequestMapping("/manager.do")
	public ModelAndView managerMethod() {
		ModelAndView mav = new ModelAndView();
		List<String> date = service.date();
		List<String> mwcount =service.mwtotal();
		List<String> bir = service.birth();
		List<String> arr = service.pubcountarr();
		int memtotal=service.memcount();
		int pubcount = service.countProcess();
		int [] caljoin = new int[12];
		int [] tt = new int[12];
		int [] birth= new int[5];
		int [] pubcountarr = new int[12];
		int [] ttt = new int[12];
		int m = 0, f=0;
		for(int i=0; i<memtotal;i++){
			if(date.get(i).split("-")[1].equals("01")){
				caljoin[0]++;
			}else if(date.get(i).split("-")[1].equals("02")){
				caljoin[1]++;
			}else if(date.get(i).split("-")[1].equals("03")){
				caljoin[2]++;
			}else if(date.get(i).split("-")[1].equals("04")){
				caljoin[3]++;
			}else if(date.get(i).split("-")[1].equals("05")){
				caljoin[4]++;
			}else if(date.get(i).split("-")[1].equals("06")){
				caljoin[5]++;
			}else if(date.get(i).split("-")[1].equals("07")){
				caljoin[6]++;
			}else if(date.get(i).split("-")[1].equals("08")){
				caljoin[7]++;
			}else if(date.get(i).split("-")[1].equals("09")){
				caljoin[8]++;
			}else if(date.get(i).split("-")[1].equals("10")){
				caljoin[9]++;
			}else if(date.get(i).split("-")[1].equals("11")){
				caljoin[10]++;
			}else if(date.get(i).split("-")[1].equals("12")){
				caljoin[11]++;
			}
			
		}
		for(int i=0;i<12;i++){
			if(i==0)
				tt[i]=caljoin[0];
			else{
				tt[i]=caljoin[i]+tt[i-1];
			}
		}
		System.out.println("2번"+memtotal);
		for(int i =0;i<memtotal;i++){
			if(mwcount.get(i).equals("m")){
				m++;
			}else
				f++;
		}
		//생년월일 xxxx-xx-xx
		for(int i=0;i<memtotal;i++){
			if(Integer.parseInt(bir.get(i).split("-")[0])<=1997 && Integer.parseInt(bir.get(i).split("-")[0])>=1988){
				birth[0]++;
			}
			else if(Integer.parseInt(bir.get(i).split("-")[0])<=1987 && Integer.parseInt(bir.get(i).split("-")[0])>=1978){
				birth[1]++;
			}
			else if(Integer.parseInt(bir.get(i).split("-")[0])<=1977 && Integer.parseInt(bir.get(i).split("-")[0])>=1968){
				birth[2]++;
			}
			else if(Integer.parseInt(bir.get(i).split("-")[0])<=1967 && Integer.parseInt(bir.get(i).split("-")[0])>=1958){
				birth[3]++;
			}
			else if(Integer.parseInt(bir.get(i).split("-")[0])<=1957 && Integer.parseInt(bir.get(i).split("-")[0])>=1948){
				birth[4]++;
			}
		}
		for(int i=0;i<pubcount;i++){
			if(arr.get(i).split("-")[1].equals("01")){
				pubcountarr[0]++;
			}else if(arr.get(i).split("-")[1].equals("02")){
				pubcountarr[1]++;
			}else if(arr.get(i).split("-")[1].equals("03")){
				pubcountarr[2]++;
			}else if(arr.get(i).split("-")[1].equals("04")){
				pubcountarr[3]++;
			}else if(arr.get(i).split("-")[1].equals("05")){
				pubcountarr[4]++;
			}else if(arr.get(i).split("-")[1].equals("06")){
				pubcountarr[5]++;
			}else if(arr.get(i).split("-")[1].equals("07")){
				pubcountarr[6]++;
			}else if(arr.get(i).split("-")[1].equals("08")){
				pubcountarr[7]++;
			}else if(arr.get(i).split("-")[1].equals("09")){
				pubcountarr[8]++;
			}else if(arr.get(i).split("-")[1].equals("10")){
				pubcountarr[9]++;
			}else if(arr.get(i).split("-")[1].equals("11")){
				pubcountarr[10]++;
			}else if(arr.get(i).split("-")[1].equals("12")){
				pubcountarr[11]++;
			}
		}
		for(int i=0;i<12;i++){
			if(i==0){
				ttt[i]=pubcountarr[0];
			System.out.println(ttt[i]);
			}else{
				ttt[i]=pubcountarr[i]+ttt[i-1];
				System.out.println(ttt[i]);
			}
		}
		//펍수
		mav.addObject("pubdate",ttt);
		mav.addObject("birth",birth);
		//가입자 and 전체 회원
		mav.addObject("cal",caljoin);
		mav.addObject("to",tt);
		//남녀 비율
		mav.addObject("m",m);
		mav.addObject("f",f);
		//소비자 인원
		mav.addObject("con",service.concount());
		//판매자 인원
		mav.addObject("sup",service.supcount());
		//펍 등록 갯수
		mav.addObject("pubcount",service.pubcount());
		//판매자 등업 인원
		mav.addObject("total", service.memrcountProcess());
		//판매자 등업 목록
		mav.addObject("List", service.memrProcess());
		//펍 등록 갯수
		mav.addObject("total2", service.suprcountProcess());
		//펍 등록대기 목록
		mav.addObject("List2", service.suprProcess());

		mav.setViewName("manager");
		return mav;
	}
	@RequestMapping("/managero.do")
	public ModelAndView chkokMethod(String id) {
		ModelAndView mav = new ModelAndView();
		service.managero(id);
		service.talko(id);
		mav.addObject("List", service.memrProcess());
		mav.setViewName("redirect:/manager.do");
		return mav;
	}

	@RequestMapping("/managerc.do")
	public ModelAndView chkcanMethod(String id) {
		ModelAndView mav = new ModelAndView();
		service.managerc(id);
		service.talkc(id);
		mav.addObject("List", service.memrProcess());
		mav.setViewName("redirect:/manager.do");
		return mav;
	}

	@RequestMapping("/managerpo.do")
	public ModelAndView pokMethod(String id) {
		ModelAndView mav = new ModelAndView();
		service.supo(id);
		service.talkpo(id);
		mav.addObject("List2", service.memrProcess());
		mav.setViewName("redirect:/manager.do");
		return mav;
	}

	@RequestMapping("/managerpc.do")
	public ModelAndView pcanMethod(String id) {
		ModelAndView mav = new ModelAndView();
		service.supc(id);
		service.talkpc(id);
		mav.addObject("List2", service.memrProcess());
		mav.setViewName("redirect:/manager.do");
		return mav;
	}
	
	@RequestMapping("/pubpre.do")
	public ModelAndView pubpre(String id){
		ModelAndView mav = new ModelAndView();
		mav.addObject("mdto",service.pubpre(id));
		mav.setViewName("pubpre");
		return mav;
	}

	@RequestMapping("/quick.do")
	public ModelAndView quick(HttpSession session,PubDTO pub){
		ModelAndView mav = new ModelAndView();
		MemDTO meme = (MemDTO)session.getAttribute("mem");
		try {
			System.out.println("들어옴?");
			pub.setId(meme.getId());
			System.out.println("실행됨?"+pub.getP_num());
				service.quick(pub);
				System.out.println("여기는");
			//퀵바에 넣기
		} catch (Exception e) {
			System.out.println("quickdoㅂㄷㅂㄷ");
		}
		mav.addObject("p_num",pub.getP_num());
		mav.setViewName("redirect:/pubview.do");
			return mav;
	}
}// end class
