package Controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dto.MemDTO;
import dto.R_socialDTO;
import dto.SocialDTO;
import dto.SocialNiceDTO;
import dto.SocialPageDTO;
import service.SocialService;

@Controller
public class SocialController {

	SocialService service;
	private int currentRow;

	public SocialController() {
	}

	public void setService(SocialService service) {
		this.service = service;
	}

	// 소셜 페이지
	@RequestMapping(value = "/social.do", method = RequestMethod.GET)
	public ModelAndView socialviewMethod(SocialPageDTO pdto, HttpSession session) {
		ModelAndView mav = new ModelAndView();

		int totalRow = service.SocialCountProcess();
		if (totalRow >= 1) {
			if (pdto.getCurrentRow() == 0) {
				currentRow = 1;
			} else {
				currentRow = pdto.getCurrentRow();
			}
			pdto = new SocialPageDTO(currentRow, totalRow);
		}
		mav.addObject("pdto", pdto);
		mav.addObject("re", service.replyViewListProcess());
		mav.addObject("so", service.socialViewProcess(pdto));

		mav.setViewName("social");
		return mav;
	};

	@RequestMapping(value = "/social.do", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> socialscrollviewMethod(SocialPageDTO pdto, HttpSession session) {
		HashMap<String, Object> map = new HashMap<String, Object>();

		int totalRow = service.SocialCountProcess();
		if (totalRow >= 1) {
			if (pdto.getCurrentRow() == 0) {
				currentRow = 1;
			} else {
				currentRow = pdto.getCurrentRow();
			}
			pdto = new SocialPageDTO(currentRow, totalRow);
		}

		List<SocialDTO> dd = service.socialViewProcess(pdto);

		map.put("pdto", pdto);
		map.put("re", service.replyViewListProcess());
		map.put("so", dd);

		return map;
	};

	// 소셜삭제버튼
	@RequestMapping(value = "/socialDelList.do", method = RequestMethod.POST)
	public @ResponseBody String socialDelviewMethod(SocialDTO dto, HttpServletRequest req) {
		System.out.println(dto.getS_num());
		System.out.println(dto.getId());
		service.SocialDelProcess(dto.getS_num(), req);

		return "good";
	}

	// 후기등록
	@RequestMapping(value = "/socialInsert.do", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> SocialInsertMethod(SocialDTO dto, SocialPageDTO pdto,
			HttpServletRequest req, HttpSession session) {

		System.out.println(dto.getS_content());
		System.out.println(dto.getId());
		System.out.println(dto.getS_upload());
		service.SocialInsertProcess(dto, req);
		HashMap<String, Object> map = new HashMap<String, Object>();

		int totalRow = service.SocialCountProcess();
		if (totalRow >= 1) {
			if (pdto.getCurrentRow() == 0) {
				currentRow = 1;
			} else {
				currentRow = pdto.getCurrentRow();
			}
			pdto = new SocialPageDTO(currentRow, totalRow);
		}

		List<SocialDTO> dd = service.socialViewProcess(pdto);

		map.put("pdto", pdto);
		map.put("re", service.replyViewListProcess());
		map.put("so", dd);

		return map;
	}

	// 리플 인설트후 리스트
	@RequestMapping(value = "/socialreplyInsertList.do", method = RequestMethod.POST)
	public @ResponseBody List<R_socialDTO> replyInsertListMethod(R_socialDTO dto) {
		return service.replyInsertListProcess(dto);
	}

	// 댓글 삭제
	@RequestMapping(value = "/socialreplyDeleteList.do", method = RequestMethod.POST)
	public @ResponseBody List<R_socialDTO> replyDeleteListMethod(R_socialDTO dto) {
		List<R_socialDTO> re = service.replyDeleteListProcess(dto);

		return re;
	}

	// 좋아요 버튼
	@RequestMapping(value = "/socialniceInsertList.do", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> socialniceInsertListMethod(SocialNiceDTO dto, HttpSession session) {
		MemDTO mem = (MemDTO) session.getAttribute("mem");

		HashMap<String, Object> map = new HashMap<String, Object>();
		SocialNiceDTO idchk = service.nicechkProcess(dto);
		if (idchk != null) {
			idchk = new SocialNiceDTO();
			map.put("idchk", idchk);
			service.niceDelProcess(dto);
			SocialDTO so = service.niceInsertListProcess(dto);
			if (so.getNice() == null) {
				SocialNiceDTO no = new SocialNiceDTO();
				no.setId(dto.getId());
				no.setS_nice(0);
				no.setS_num(dto.getS_num());
				map.put("bb", no);
				map.put("cc", so);
				System.out.println("여오지?");
			} else {
				map.put("cc", service.niceInsertListProcess(dto));
				System.out.println("여기로~");
			}

		} else {
			service.niceInsertProcess(dto);
			map.put("cc", service.niceInsertListProcess(dto));
		}

		return map;
	}

	/*
	 * // 좋아요취소 버튼
	 * 
	 * @RequestMapping(value = "/socialniceDelList.do", method =
	 * RequestMethod.POST) public @ResponseBody SocialNiceDTO
	 * socialniceDelListMethod(SocialNiceDTO dto) {
	 * 
	 * SocialNiceDTO no = service.niceDelListProcess(dto); if (no == null) {
	 * SocialNiceDTO nice = new SocialNiceDTO(); nice.setS_num(dto.getS_num());
	 * nice.setS_nice(0); return nice; } else { return no; } }
	 */
}// end class
