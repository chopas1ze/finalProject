package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.R_socialDTO;
import dto.SocialDTO;
import dto.SocialNiceDTO;
import dto.SocialPageDTO;

public interface SocialService {

	public void SocialInsertProcess(SocialDTO dto, HttpServletRequest req);

	public List<SocialDTO> socialViewProcess(SocialPageDTO pdto);

	public List<R_socialDTO> replyInsertListProcess(R_socialDTO dto);

	public List<R_socialDTO> replyDeleteListProcess(R_socialDTO dto);

	public SocialDTO niceInsertListProcess(SocialNiceDTO dto);

	public int SocialCountProcess();

	public List<R_socialDTO> replyViewListProcess();

	// public SocialNiceDTO niceDelListProcess(SocialNiceDTO dto);

	public void SocialDelProcess(int s_num, HttpServletRequest req);

	public SocialNiceDTO nicechkProcess(SocialNiceDTO dto);

	public void niceInsertProcess(SocialNiceDTO dto);

	public void niceDelProcess(SocialNiceDTO dto);
}
