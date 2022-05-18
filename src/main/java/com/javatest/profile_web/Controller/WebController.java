package com.javatest.profile_web.Controller;

import org.springframework.stereotype.Controller;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javatest.profile_web.dao.IDao;
import com.javatest.profile_web.dto.MemberDto;

@Controller
public class WebController {

	@Autowired
	private SqlSession sqlSession;
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
	
		return "index";
	}
	
	@RequestMapping(value = "/index")
	public String index() {
	
		return "index";
	}
	
	@RequestMapping(value="/login")
	public String login() {
		
		return "login";
	}
	
	@RequestMapping(value = "/loginOk", method = RequestMethod.POST)
	public String loginOk(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkIdFlag = dao.checkIdDao(request.getParameter("id")); // join.jsp에서 입력받은 아이디가 DB에 존재하면 1, 아니면 0 반환
		int checkPwFlag = dao.checkPwDao(request.getParameter("id"),request.getParameter("pw")); // 입력받은 아이디와 그 비밀번호가 일치하면 1, 아니면 0 반환
		model.addAttribute("checkIdFlag", checkIdFlag); // checkIdFlag=1이면 로그인하려는 아이디가 존재, 0이면 아이디가 존재하지 않음.
		model.addAttribute("checkPwFlag", checkPwFlag); // checkPwFlag=1이면 아이디와 그 아이디의 비밀번호가 일치하므로 로그인 가능
		
		if(checkPwFlag == 1 ) {
			
			MemberDto memberDto = dao.loginOkDao(request.getParameter("id"));
			
			HttpSession session = request.getSession();
			
			// 로그인 성공 시 세션에 id, pw 저장
			session.setAttribute("id", memberDto.getMid()); 
			session.setAttribute("name", memberDto.getMname());
			

			model.addAttribute("mid", memberDto.getMid());
			model.addAttribute("mname", memberDto.getMname());
		}
		
		return "loginOk";
	}
	
	@RequestMapping(value="/logout")
	public String logout() {
		
		return "logout";
	}
	
	@RequestMapping(value="/join")
	public String join() {
		
		return "join";
	}
	
	@RequestMapping(value = "/joinOk", method = RequestMethod.POST)
	public String joinOk(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkIdFlag = dao.checkIdDao(request.getParameter("id")); // join.jsp에서 입력받은 아이디가 DB에 존재하면 1, 아니면 0 반환
		model.addAttribute("checkIdFlag", checkIdFlag); // checkIdFlag=1이면 아이디 사용 중, 0이면 신규 가입가능
		
		if(checkIdFlag != 1 ) {
			dao.joinDao(request.getParameter("id"), request.getParameter("pw"), request.getParameter("name"), request.getParameter("email"));
			
			HttpSession session = request.getSession();
			
			session.setAttribute("id", request.getParameter("id")); // 가입 성공된 아이디를 세션에 저장하여 로그인까지 하게 함
			
			model.addAttribute("mid", request.getParameter("id"));
			model.addAttribute("mname", request.getParameter("name"));
		}
		
		return "joinOk";
	}
	
	@RequestMapping(value="infoModify")
	public String infoModify(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		String sessionId = (String) session.getAttribute("id");
		
		IDao dao = sqlSession.getMapper(IDao.class);
	
		MemberDto memberDto = dao.loginOkDao(sessionId);
		
		model.addAttribute("memberDto",memberDto);

		
		return "infoModify";
	}
	
	@RequestMapping(value="infoModifyOk")
	public String infoModifyOk(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.memberInfoModifyOkDao(request.getParameter("pw"), request.getParameter("name"), request.getParameter("email"),request.getParameter("id"));

		MemberDto memberDto = dao.loginOkDao(request.getParameter("id"));
		
		model.addAttribute("memberDto",memberDto);
		
		return "infoModifyOk";
	}
	
	@RequestMapping(value="/profile")
	public String profile() {
		
		return "profile";
	}

	@RequestMapping(value="/question")
	public String question() {
		
		return "question";
	}
	
	@RequestMapping(value="/qview")
	public String qview(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("qview", dao.viewDao(request.getParameter("qnum")));
		
		return "qview";
	}

	@RequestMapping(value="/write")
	public String write(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.writeDao(request.getParameter("qid"), request.getParameter("qname"), request.getParameter("qcontent"), request.getParameter("qemail"));
		
		return "redirect:list";
	}

	@RequestMapping(value = "/list")
	public String list(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("list", dao.listDao());
		
		return "list";
	}
	
	@RequestMapping(value="/delete")
	public String delete(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.deleteDao(request.getParameter("qnum"));
		
		return "redirect:list";
	}
	
	@RequestMapping(value="/modify")
	public String modify(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.modifyDao(request.getParameter("qname"), request.getParameter("qcontent"), request.getParameter("qemail"), request.getParameter("qnum"));
		
		return "redirect:list";
	}
	
	@RequestMapping(value="/contact")
	public String contact() {
		
		return "contact";
	}
	
}
