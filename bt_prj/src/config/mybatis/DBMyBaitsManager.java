package config.mybatis;

import java.io.Reader;
import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.biz.member.MemberVO;


public class DBMyBaitsManager {
	
	public SqlSession mybatisConn() {
		String path = "config/mybatis/config-mybatis.xml";
		Reader reader;
		SqlSessionFactory factory = null;
		SqlSession conn = null;
		try {
			reader = Resources.getResourceAsReader(path);
			factory = new SqlSessionFactoryBuilder().build(reader);
			conn = factory.openSession();

		} catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public void mybatisClose(SqlSession conn) {
		if(conn != null) conn.close();
	}

	public static void main(String[] args) {
		DBMyBaitsManager db = new DBMyBaitsManager();
		SqlSession conn =db.mybatisConn();
		
		
		MemberVO mvo = new MemberVO();
		mvo.setUserId("admin");
		mvo.setUserPw("111");
		
		
		//멤버 로그인
		MemberVO loginRes = conn.selectOne("com.biz.mapper.MemberMap.login", mvo);
		System.out.println(loginRes.getUserName());
		
		mvo.setUserName("subsub");
		mvo.setUserGubun("u");
		
		
		//멤버 회원가입
		int regres = conn.insert("com.biz.mapper.MemberMap.member_register", mvo);
		System.out.println(regres + " : 건 입력");

		
		//유저 전체 리스트
		MemberVO lvo = new MemberVO();
		lvo.setSearchGubun("user_id");
		lvo.setSearchStr("lss9090");
		
		ArrayList<MemberVO> list = (ArrayList)conn.selectList("com.biz.mapper.MemberMap.member_list");
		System.out.println(list.size()+"건");
		System.out.println(list.get(4).getUserName());
		
		
		System.out.println("================================================================");
		
		String strName= "lss";
		
		
		//회원 탈퇴
		int delRes = conn.update("com.biz.mapper.MemberMap.member_delete", strName);
		
		
		//유저 디테일
		String detailStr = "lss9090";
		MemberVO detailRes = conn.selectOne("com.biz.mapper.MemberMap.member_detail", detailStr);
		System.out.println(detailRes.getUserName());
		
		
		//회원 정보 수정
		mvo.setUserName("LOLOLOL");
		mvo.setUserId("admin11");
		mvo.setUserPw("111222");
		int updateRes = conn.update("com.biz.mapper.MemberMap.member_update", strName);

		System.out.println(updateRes + "건 수정");
		
		/*conn.commit();
		  conn.rollback();
		 */
		
		
//		↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 멤버테스트 ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		db.mybatisClose(conn);
	}

}
