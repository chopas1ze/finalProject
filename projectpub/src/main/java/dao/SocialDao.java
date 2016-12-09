package dao;

import java.util.List;

import dto.R_socialDTO;
import dto.SocialDTO;
import dto.SocialNiceDTO;
import dto.SocialPageDTO;

public interface SocialDao {

	public void SocialInsertMethod(SocialDTO dto);

	public List<SocialDTO> SocialViewMethod(SocialPageDTO pdto);

	public List<R_socialDTO> replyListViewMethod(int s_num);

	public void replyInsertMethod(R_socialDTO dto);

	public void replyDeleteMethod(R_socialDTO dto);

	public void niceInsertMethod(SocialNiceDTO dto);

	public SocialDTO niceviewMethod(int s_num);

	public int SocialCountmehtod();

	public List<R_socialDTO> replyListMethod();

	public void niceDelMethod(SocialNiceDTO dto);

	public void SocialDelMethod(int s_num);

	public String getfile(int s_num);

	public SocialNiceDTO nicechkMethod(SocialNiceDTO dto);

}
