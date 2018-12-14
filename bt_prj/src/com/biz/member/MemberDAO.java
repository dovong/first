package com.biz.member;

import org.apache.ibatis.session.SqlSession;
import com.biz.common.MyBatisFactory;

public class MemberDAO {
	//singleton(싱글턴) : 객체의 중앙관리화
	//factory instance : private static 
	//public static getFactory
	
	public int changePassword(MemberVO mvo) {
		SqlSession conn = null;
		int regRes = 0;
		try {
			conn = MyBatisFactory.getFactory().openSession();
			regRes = conn.update("com.biz.mapper.MemberMap.changePassword", mvo);
			conn.commit();
		} finally {
			conn.close();
		}
		return regRes;
	}
	
	
	/**
	 * @회원 가입
	 * @param mvo
	 * @return
	 */
	public int insert(MemberVO mvo) {
		SqlSession conn = null;
		int regRes = 0;
		try {
			conn = MyBatisFactory.getFactory().openSession();
			regRes = conn.insert("com.biz.mapper.MemberMap.member_register", mvo);
			conn.commit();
		} finally {
			conn.close();
		}
		return regRes;
	}
	
	
	/**
	 * 회원정보 삭제, del이 n인 유저를 y로 바꿈
	 * @param String
	 * @return res
	 */
	public int updateDel(String uid) {
		SqlSession conn = null;
		int delUpdateRes = 0;
		try {
			conn = MyBatisFactory.getFactory().openSession();
			delUpdateRes = conn.update("com.biz.mapper.MemberMap.member_delete", uid);
			conn.commit();
		} finally {
			conn.close();
		}
		return delUpdateRes;
	}

	/**
	 * 회원정보 수정
	 * @param mvo
	 * @return res
	 */
	public int update(MemberVO mvo) {
		SqlSession conn = null;
		int updateRes = 0;
		try {
			conn = MyBatisFactory.getFactory().openSession();
			updateRes = conn.update("com.biz.mapper.MemberMap.member_update", mvo);
			conn.commit();
		} finally {
			conn.close();
		}
		return updateRes;
	}

	/**
	 * 회원 정보 수정을 위한 모든 정보 가져오기
	 * @param userId
	 * @return
	 */
	public MemberVO select(String userId) {
		SqlSession conn = null;
		MemberVO detailVO = new MemberVO();
		try {
			conn = MyBatisFactory.getFactory().openSession();
			detailVO = conn.selectOne("com.biz.mapper.MemberMap.member_detail", userId);
		} finally {
			conn.close();
		}
		return detailVO;
	}

	/**
	 * 로그인 정보 가져오기
	 * @param mvo
	 * @return
	 */
	public MemberVO select(MemberVO mvo) {
		SqlSession conn = null;
		MemberVO loginVO = new MemberVO();
		try {
			conn = MyBatisFactory.getFactory().openSession();
			loginVO = conn.selectOne("com.biz.mapper.MemberMap.login", mvo);
		} finally {
			conn.close();
		}
		return loginVO;
	}
}
