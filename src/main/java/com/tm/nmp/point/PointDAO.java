package com.tm.nmp.point;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PointDAO {
	
	int bonusPoint;	// 보너스 포인트
	double bonusRatio;	// 포인트 적립 비율
	double saleRatio;	// 할인률
	
	@Autowired
	private SqlSession ss;
	
	
	public String setGrade(String grade) {
		if (grade == "다이아몬드") {
			bonusRatio = 0.05;
			saleRatio = 0.1;
		}else if (grade == "플래티넘") {
			bonusRatio = 0.04;
			saleRatio = 0.08;
		}else if (grade == "골드") {
			bonusRatio = 0.03;
			saleRatio = 0.06;
		}else if (grade == "실버") {
			bonusRatio = 0.02;
			saleRatio = 0.04;
		}else if (grade == "브론즈") {
			bonusRatio = 0.01;
			saleRatio = 0.02;
		}else {
			bonusRatio = 0;
			saleRatio = 0;
		}
	}

	// 게시판, 댓글로 받을 포인트
	public int calcAddPostAndAddCommentPoint(PointVo pv, int plusPoint) {
		int point = pv.getPoint() += plusPoint;
		return point;
	}

// 영수증 첨부에 따른 추가 포인트           price = 영수증의 price
	public int calcReceiptPrice(int price) {
		bonusPoint += price * bonusRatio; // 등급별 보너스% 다르게
		point += (point + bonusPoint);
		return point;
	}

	public String showBonusInfo() {
		return userId + "님의 등급은" + grade + "이며, 보너스 포인트는 " + bonusPoint + "입니다.";
	}

}
