package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dto.R_socialDTO;
import dto.SocialDTO;
import dto.SocialNiceDTO;
import dto.SocialPageDTO;

public class SocialDaoImp implements SocialDao {

	SqlSessionTemplate sqlSession;

	public SocialDaoImp() {
	}

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void SocialInsertMethod(SocialDTO dto) {
		sqlSession.insert("social.socialins", dto);
	}

	@Override
	public List<SocialDTO> SocialViewMethod(SocialPageDTO pdto) {
		return sqlSession.selectList("social.view", pdto);
	}

	@Override
	public List<R_socialDTO> replyListViewMethod(int s_num) {
		return sqlSession.selectList("social.replyview", s_num);
	}

	@Override
	public void replyInsertMethod(R_socialDTO dto) {
		sqlSession.insert("social.replyIns", dto);
	}

	@Override
	public void replyDeleteMethod(R_socialDTO dto) {
		sqlSession.delete("social.replyDel", dto);
	}

	@Override
	public void niceInsertMethod(SocialNiceDTO dto) {
		sqlSession.insert("social.niceins", dto);
	}

	@Override
	public SocialDTO niceviewMethod(int s_num) {
		return sqlSession.selectOne("social.niceview", s_num);
	}

	@Override
	public int SocialCountmehtod() {
		return sqlSession.selectOne("social.socialcount");
	}

	@Override
	public List<R_socialDTO> replyListMethod() {
		return sqlSession.selectList("social.review");
	}

	@Override
	public void niceDelMethod(SocialNiceDTO dto) {
		sqlSession.delete("social.niceDel", dto);
	}

	@Override
	public void SocialDelMethod(int s_num) {
		sqlSession.delete("social.socialDel", s_num);
	}

	@Override
	public String getfile(int s_num) {
		return sqlSession.selectOne("social.filename", s_num);
	}

	@Override
	public SocialNiceDTO nicechkMethod(SocialNiceDTO dto) {
		return sqlSession.selectOne("social.nicechk", dto);
	}

}
