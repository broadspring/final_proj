package com.tm.nmp.community;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tm.nmp.account.AccountDAO;

@Controller
public class CommunityController {
	@Autowired
	private AccountDAO acDAO;
	
	@Autowired
	private CM_WG_DAO wgDAO;
	
	@Autowired
	private CM_RV_DAO rvDAO;
	
	@RequestMapping(value = "withGoList.go", method = RequestMethod.GET)
	public String withGoListGo(HttpServletRequest req, CM_WG_TITLE wg) {
		acDAO.loginCheck(req);
		wgDAO.showWithGoList(req, wg);
		req.setAttribute("contentPage", "community/withGo/withGo.jsp");

		return "index";
	}
	
	@RequestMapping(value = "/withGoWrite.go", method = RequestMethod.GET)
	public String withGoWriteGo(HttpServletRequest req) {
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "community/withGo/withGoWrite.jsp");
		return "index";
	}
	
	@RequestMapping(value = "withGoWrite.do", method = RequestMethod.POST)
	public String withGoWriteDo(HttpServletRequest req, CM_WG_TITLE wg) {
		acDAO.loginCheck(req);
		return "redirect:withGoDetail.go?wg_no="+wgDAO.withGoWrite(req, wg);
	}
	
	@RequestMapping(value = "withGoDetail.go", method = RequestMethod.GET)
	public String withGoDetailGo(HttpServletResponse res ,HttpServletRequest req, CM_WG_TITLE wg) {
		acDAO.loginCheck(req);
		wgDAO.showWithGoDetail(req, wg);
		req.setAttribute("contentPage", "community/withGo/withGoDetail.jsp");
		return "index";
	}
	
	@RequestMapping(value = "withGoDelete.do", method = RequestMethod.GET)
	public String withGoDeleteDo(HttpServletRequest req, CM_WG_TITLE wg) {
		acDAO.loginCheck(req);
		wgDAO.deleteWithGo(req, wg);
		wgDAO.showWithGoList(req, wg);
		req.setAttribute("contentPage", "community/withGo/withGo.jsp");
		return "index";
	}
	
	@RequestMapping(value = "withGoUpdate.go", method = RequestMethod.GET)
	public String withGoUpdateGo(HttpServletRequest req, CM_WG_TITLE wg) {
		acDAO.loginCheck(req);
		wgDAO.showWithGoDetail(req, wg);
		req.setAttribute("contentPage", "community/withGo/withGoUpdate.jsp");
		return "index";
	}
	
	@RequestMapping(value = "withGoUpdate.do", method = RequestMethod.POST)
	public String withGoUpdateDo(HttpServletRequest req, CM_WG_TITLE wg) {
		acDAO.loginCheck(req);
		wgDAO.deleteWithGo(req, wg);
		req.setAttribute("contentPage", "community/withGo/withGoDetail.jsp");
		return "index";
	}
	
	@RequestMapping(value = "reviewList.go", method = RequestMethod.GET)
	public String reviewListGo(HttpServletRequest req, CM_RV_TITLE rv) {
		acDAO.loginCheck(req);
		rvDAO.showReviewList(req, rv);
		req.setAttribute("contentPage", "community/review/review.jsp");

		return "index";
	}
	
	@RequestMapping(value = "/reviewWrite.go", method = RequestMethod.GET)
	public String reviewWriteGo(HttpServletRequest req) {
		acDAO.loginCheck(req);
		req.setAttribute("contentPage", "community/review/reviewWrite.jsp");
		return "index";
	}
	
	@RequestMapping(value = "reviewWrite.do", method = RequestMethod.POST)
	public String reviewWriteDo(HttpServletRequest req, CM_RV_TITLE rv) {
		acDAO.loginCheck(req);
		return "redirect:reviewDetail.go?rv_no="+rvDAO.ReviewWrite(req, rv);
	}
	
	@RequestMapping(value = "reviewDetail.go", method = RequestMethod.GET)
	public String reviewDetailGo(HttpServletResponse res ,HttpServletRequest req, CM_RV_TITLE rv) {
		acDAO.loginCheck(req);
		rvDAO.showReviewDetail(req, rv);
		req.setAttribute("contentPage", "community/review/reviewDetail.jsp");
		return "index";
	}
	
	@RequestMapping(value = "reviewDelete.do", method = RequestMethod.GET)
	public String reviewDeleteDo(HttpServletRequest req, CM_RV_TITLE rv) {
		acDAO.loginCheck(req);
		rvDAO.deleteReview(req, rv);
		rvDAO.showReviewList(req, rv);
		req.setAttribute("contentPage", "community/review/review.jsp");
		return "index";
	}
	
	@RequestMapping(value = "reviewUpdate.go", method = RequestMethod.GET)
	public String reviewUpdateGo(HttpServletRequest req, CM_RV_TITLE rv) {
		acDAO.loginCheck(req);
		rvDAO.showReviewDetail(req, rv);
		req.setAttribute("contentPage", "community/review/reviewUpdate.jsp");
		return "index";
	}
	
	@RequestMapping(value = "reviewUpdate.do", method = RequestMethod.POST)
	public String reviewUpdateDo(HttpServletRequest req, CM_RV_TITLE rv) {
		acDAO.loginCheck(req);
		rvDAO.deleteReview(req, rv);
		req.setAttribute("contentPage", "community/review/reviewDetail.jsp");
		return "index";
	}
	
}