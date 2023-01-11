package com.tm.nmp;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tm.nmp.account.AccountDAO;

@Controller
public class HomeController {
	
	@Autowired
	private AccountDAO acDAO;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "home.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/index.go", method = RequestMethod.GET)
	public String indexGo(HttpServletRequest req) {
		return home(req);
	}
	
	@RequestMapping(value = "/account.login.go", method = RequestMethod.GET)
	public String accountLoginGo(HttpServletRequest req) {
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "account/loginPage.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/stadium.main.go", method = RequestMethod.GET)
	public String stadiumMainGo(HttpServletRequest req) {
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "stadium/stadiumMain.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/news.main.go", method = RequestMethod.GET)
	public String newsMainGo(HttpServletRequest req) {
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "infoEvent/news/newsMain.jsp");
			req.setAttribute("newsPage", "everyNews.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/community.main.go", method = RequestMethod.GET)
	public String communityMainGo(HttpServletRequest req) {
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "community/communityMain.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/infoEvent.main.go", method = RequestMethod.GET)
	public String infoEventMainGo(HttpServletRequest req) {
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "infoEvent/infoEventMain.jsp");
		req.setAttribute("newsPage", "news/everyNews.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/games.main.go", method = RequestMethod.GET)
	public String gamesMainGo(HttpServletRequest req) {
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "games/gamesMain.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/myPage.main.go", method = RequestMethod.GET)
	public String myPageMainGo(HttpServletRequest req) {
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "myPage/myPageMain.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/admin.main.go", method = RequestMethod.GET)
	public String adminMainGo(HttpServletRequest req) {
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "admin/admin.jsp");
		return "index";
	}
	
	
	
}
