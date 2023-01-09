package com.tm.nmp.account;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AccountController {
	
	@Autowired
	private AccountDAO acDAO;
	
	@RequestMapping(value = "/account.reg.go", method = RequestMethod.GET)
	public String accountRegGo(HttpServletRequest req) {
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "account/accountReg.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/account.reg.do", method = RequestMethod.POST)
	public String accountRegDo(HttpServletRequest req, AccountDTO ac) {
		acDAO.accountRegDo(req, ac);
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "home.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/account.login.do", method = RequestMethod.POST)
	public String accountLoginDo(HttpServletRequest req, AccountDTO ac) {
		acDAO.accountLoginDo(req, ac);
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "home.jsp");
		return "index";
	}

	
	@RequestMapping(value = "/account.logout.do", method = RequestMethod.GET)
	public String accountLogoutDo(HttpServletRequest req, AccountDTO ac) {
		acDAO.accountLogoutDo(req, ac);
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "home.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/search.id.go", method = RequestMethod.GET)
	public String searchIdGo(HttpServletRequest req) {
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "account/search_id.jsp");
		return "index";
	}

	@RequestMapping(value = "/search.id.do", method = RequestMethod.POST)
	public String searchIdDo(HttpServletRequest req, AccountDTO ac) {
		acDAO.searchIdDo(req, ac);
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "account/search_result_id.jsp");
		return "index";
	}

	@RequestMapping(value = "/search.pw.go", method = RequestMethod.GET)
	public String searchPwGo(HttpServletRequest req) {
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "account/search_pw.jsp");
		return "index";
	}

	@RequestMapping(value = "/search.pw.do", method = RequestMethod.POST)
	public String searchPwDo(HttpServletRequest req, AccountDTO ac) {
		acDAO.loginCheck(req);
		req.setAttribute("Account", ac);
		req.setAttribute("contentPage", "account/pwReg.jsp");
		return "index";
	}

	@RequestMapping(value = "/email.check.do", method = RequestMethod.GET)
	@ResponseBody
	public String emailCheckDo(HttpServletRequest req, String ac_email) {
		acDAO.loginCheck(req);
		return acDAO.emailCheckDo(ac_email);
	}
	
	@RequestMapping(value = "/change.pw.do", method = RequestMethod.POST)
	public String changePwDo(HttpServletRequest req, AccountDTO ac) {
		acDAO.changePwDo(req, ac);
		req.setAttribute("contentPage", "home.jsp");
		acDAO.loginCheck(req);
		return "index";
	}
	
	@RequestMapping(value = "/account.modify.go", method = RequestMethod.GET)
	public String myPageModifyGo(HttpServletRequest req) {
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "myPage/myPageModify.jsp");
		return "index";
	}

	@RequestMapping(value = "/account.modify.do", method = RequestMethod.POST)
	public String myPageModifyDo(HttpServletRequest req) {
		acDAO.loginCheck(req);
		acDAO.accountUpdate(req);
		req.setAttribute("contentPage", "myPage/myPageInfo.jsp");
		return "index";
	}

	@RequestMapping(value = "/account.delete.go", method = RequestMethod.GET)
	public String myPageDeleteGo(HttpServletRequest req, AccountDTO ac) {
		acDAO.accountDelete(req);
		acDAO.accountLogoutDo(req, ac);
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "home.jsp");
		return "index";
	}
	
	
}