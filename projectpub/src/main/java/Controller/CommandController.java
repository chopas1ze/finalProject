package Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dto.MemDTO;
import service.LoginService;

@Controller
public class CommandController {
	LoginService service;
	
	public void setService(LoginService service) {
		this.service = service;
	}

	public CommandController() {
	}

	
	//시작 페이지
		@RequestMapping("/mainview.do")
		public String mainviewMethod(){
			return "main";
		};
		
		//로그아웃
		@RequestMapping("/logout.do")
		public String logoutMethod(HttpServletRequest req, HttpSession session){
			
			      MemDTO dto = (MemDTO)	req.getSession().getAttribute("mem");
			     
			      if(dto != null) {             
			    	 service.logTimeProcess(dto);
			         session.removeAttribute("mem");            
			         session.invalidate();            
			      };
			      
			return "redirect:/mainview.do";
		};
		
				

}// end class
