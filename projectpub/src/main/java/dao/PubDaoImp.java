package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dto.MemDTO;
import dto.PubDTO;
import dto.PubPageDTO;
import dto.StarsDTO;

public class PubDaoImp implements PubDao {
	private SqlSessionTemplate sqlSession;
	
	public PubDaoImp() {
}

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	//펍저장
	@Override
	public void save(PubDTO dto) {
		sqlSession.insert("aaa.save",dto);
	}

	//랭킹
	@Override
	public List<PubDTO> get() {
		return sqlSession.selectList("aaa.get");
	}

	//전체 가져오기
	@Override
	public int count() {
		return sqlSession.selectOne("aaa.count");
	}

	//전체 펍 4개씩 가져오기
	@Override
	public List<PubDTO> list(PubPageDTO pv) {
		return sqlSession.selectList("aaa.list",pv);
	}

	//미구현
	@Override
	public int searcount(String data) {
		return sqlSession.selectOne("aaa.search",data);
	}

	@Override
	public List<PubDTO> searchlist(PubPageDTO pv) {

		return sqlSession.selectList("aaa.searchlist",pv);
	}

	@Override
	public void managero(String id) {
		sqlSession.update("aaa.managero",id);
	}

	@Override
	public void managerc(String id) {
		sqlSession.update("aaa.managerc",id);
	}

	@Override
	public void supo(String id) {
		sqlSession.update("aaa.pok",id);
	}

	@Override
	public void supc(String id) {
		sqlSession.update("aaa.pcan",id);
	}

	@Override
	public List<String> date() {
		return sqlSession.selectList("aaa.dates");
	}

	@Override
	public int supcount() {
		return sqlSession.selectOne("aaa.memycount");
	}

	@Override
	public int concount() {
		return sqlSession.selectOne("aaa.concount");
	}

	@Override
	public int pubcount() {
		return sqlSession.selectOne("aaa.count");
	}
	
	@Override
	public int memrcount() {
		return sqlSession.selectOne("aaa.memrcount");
	}
	
	@Override
	public List<MemDTO> memr() {
		return sqlSession.selectList("aaa.memr");
	}
	
	@Override
	public int suprcount() {
		return sqlSession.selectOne("aaa.suprcount");
	}
	
	@Override
	public List<PubDTO> supr() {
		return sqlSession.selectList("aaa.admin_pubjoin");
	}

	@Override
	public int memcount() {
		return sqlSession.selectOne("aaa.memtotal");
	}

	@Override
	public List<String> mwtotal() {
		return sqlSession.selectList("aaa.mwcount");
	}

	@Override
	public List<String> birth() {
		return sqlSession.selectList("aaa.birth");
	}

	@Override
	public List<MemDTO> pubpre(String id) {
		return sqlSession.selectList("aaa.mempubinfo",id);
	}


	@Override
	public void talko(String id) {
		sqlSession.insert("aaa.talko",id);
	}

	@Override
	public void talkc(String id) {
		sqlSession.insert("aaa.talkc",id);
	}

	@Override
	public void talkpo(String id) {
		sqlSession.insert("aaa.talkpo",id);
	}

	@Override
	public void talkpc(String id) {
		sqlSession.insert("aaa.talkpc",id);		
	}

	@Override
	public void quick(PubDTO pub) {
		sqlSession.insert("aaa.quick",pub);
	}

	@Override
	public List<PubDTO> quickcount(String id) {
		return sqlSession.selectList("aaa.quickcount", id);
	}

	@Override
	public int quickcheck(PubDTO pub) {
		return sqlSession.selectOne("aaa.quickcheck",pub);
	}

	@Override
	public List<String> pubcountarr() {
		return sqlSession.selectList("aaa.pubcountarr");
	}

	
}//end class
