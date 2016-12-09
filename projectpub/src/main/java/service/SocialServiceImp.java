package service;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import dao.SocialDao;
import dto.R_socialDTO;
import dto.SocialDTO;
import dto.SocialNiceDTO;
import dto.SocialPageDTO;

public class SocialServiceImp implements SocialService {

	private SocialDao dao;

	public SocialServiceImp() {
	}

	public void setDao(SocialDao dao) {
		this.dao = dao;
	}

	@Override
	public List<SocialDTO> socialViewProcess(SocialPageDTO pdto) {
		return dao.SocialViewMethod(pdto);
	}

	@Override
	public void SocialInsertProcess(SocialDTO dto, HttpServletRequest req) {

		if (dto.getFilename() != null) {
			MultipartFile file = dto.getFilename();
			System.out.println("있냐" + dto.getFilename());

			if (!file.isEmpty()) {
				String fileName = file.getOriginalFilename();

				UUID random = UUID.randomUUID();
				String root = req.getSession().getServletContext().getRealPath("/");
				String saveDirectory = root + "temp" + File.separator;

				File fe = new File(saveDirectory);
				if (!fe.exists())
					fe.mkdir();

				File ff = new File(saveDirectory, random + "_" + fileName);
				try {
					FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(ff));
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				dto.setS_upload(random + "_" + fileName);
			}
		}
		dao.SocialInsertMethod(dto);
	}

	@Override
	public List<R_socialDTO> replyInsertListProcess(R_socialDTO dto) {
		dao.replyInsertMethod(dto);
		return dao.replyListViewMethod(dto.getS_num());
	}

	@Override
	public List<R_socialDTO> replyDeleteListProcess(R_socialDTO dto) {
		dao.replyDeleteMethod(dto);
		return dao.replyListViewMethod(dto.getS_num());
	}

	@Override
	public SocialDTO niceInsertListProcess(SocialNiceDTO dto) {
		return dao.niceviewMethod(dto.getS_num());
	}

	@Override
	public int SocialCountProcess() {
		return dao.SocialCountmehtod();
	}

	@Override
	public List<R_socialDTO> replyViewListProcess() {
		return dao.replyListMethod();
	}

	@Override
	public void SocialDelProcess(int s_num, HttpServletRequest req) {

		String upload = dao.getfile(s_num);
		if (upload != null) {
			String root = req.getSession().getServletContext().getRealPath("/");
			String saveDirectory = root + "temp" + File.separator;
			File fe = new File(saveDirectory, upload);
			fe.delete();
		}

		dao.SocialDelMethod(s_num);
	}

	@Override
	public SocialNiceDTO nicechkProcess(SocialNiceDTO dto) {
		return dao.nicechkMethod(dto);
	}

	@Override
	public void niceInsertProcess(SocialNiceDTO dto) {
		dao.niceInsertMethod(dto);
	}

	@Override
	public void niceDelProcess(SocialNiceDTO dto) {
		dao.niceDelMethod(dto);
	}

}