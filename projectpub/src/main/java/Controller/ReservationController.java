package Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dto.MemDTO;
import dto.Pr_replyDTO;
import dto.ReservationDTO;
import dto.StarsDTO;
import service.ReservationService;

@Controller

public class ReservationController {

	ReservationService service;

	public ReservationController() {
	}

	public void setService(ReservationService service) {
		this.service = service;
	}

	// 뷰 불러오기
	@RequestMapping(value = "/pubview.do", method = RequestMethod.GET)
	public ModelAndView viewMethod(int p_num, HttpSession session) {
		ModelAndView mav = new ModelAndView();

		MemDTO mem = (MemDTO) session.getAttribute("mem");

		if (mem != null) {
			StarsDTO ss = new StarsDTO();
			ss.setId(mem.getId());
			ss.setP_num(p_num);
			mav.addObject("ss", service.starChkProcess(ss));
			mav.addObject("coupon", service.couponListProcess(mem.getId()));// 쿠폰
																			// 뷰
		}
		// 사진 쪼개기
		String[] pimg = service.reservationListProcess(p_num).get(0).getP_mupload().toString().split("/");
		
		mav.addObject("pubimg", pimg);// 사진
		mav.addObject("rdto", service.reservationListProcess(p_num));// 3중조인 펍,
																		// 리플,
																		// 스타
		mav.setViewName("reservation");
		return mav;

	}

	// 예약버튼
	@RequestMapping(value = "/pubview.do", method = RequestMethod.POST)
	public ModelAndView reservationInsertMethod(ReservationDTO dto, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		System.out.println(dto.getId());
		
		MemDTO mem = (MemDTO) session.getAttribute("mem");
		service.resinsertProcess(dto);
		if (mem != null) {
			StarsDTO ss = new StarsDTO();
			ss.setId(mem.getId());
			ss.setP_num(dto.getP_num());
			mav.addObject("ss", service.starChkProcess(ss));
			mav.addObject("coupon", service.couponListProcess(mem.getId()));
		}
		String[] pimg = service.reservationListProcess(dto.getP_num()).get(0).getP_mupload().toString().split("/");

		mav.addObject("pubimg", pimg);
		mav.addObject("rdto", service.reservationListProcess(dto.getP_num()));
		mav.setViewName("reservation");
		return mav;
	}

	// 별점 인설트후 평균 호출
	@RequestMapping(value = "/pubStarInsertList.do", method = RequestMethod.POST)
	public @ResponseBody StarsDTO StarInsertMethod(StarsDTO dto) {
		System.out.println(dto.getS_stars());
		return service.pubStarAvgProcess(dto);
	}

	// 리플 인설트후 리스트
	@RequestMapping(value = "/replyInsertList.do", method = RequestMethod.POST)
	public @ResponseBody List<Pr_replyDTO> replyInsertListMethod(Pr_replyDTO dto) {

		return service.replyInsertListProcess(dto);
	}

	// 리플 삭제후 리스트
	@RequestMapping(value = "/replyDeleteList.do", method = RequestMethod.POST)
	public @ResponseBody List<Pr_replyDTO> replyDeleteListMethod(Pr_replyDTO dto) {
		return service.replyDeleteListProcess(dto);
	}

	// 리플 수정 후 리스트
	@RequestMapping(value = "/replyUpdateList.do", method = RequestMethod.POST)
	public @ResponseBody List<Pr_replyDTO> replyUpdateListMethod(Pr_replyDTO dto) {
		return service.replyUpdateListProcess(dto);
	}

}
