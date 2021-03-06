package Controller;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import dto.MemDTO;

public class MailSend {
	public MailSend(MemDTO dto) {
		System.out.println(dto.getEmail());
		System.out.println(dto.getId());

		Properties p = System.getProperties();
		p.put("mail.smtp.starttls.enable", "true");// gmail은 무조건 true 고정
		p.put("mail.smtp.host", "smtp.gmail.com");// smtp 서버 주소
		p.put("mail.smtp.auth", "true");// gmail은 무조건 true 고정
		p.put("mail.smtp.port", "587");// gmail 포트

		Authenticator auth = new MyAuthentication();

		// session 생성 및 MimeMessage생성
		Session session = Session.getDefaultInstance(p, auth);
		MimeMessage msg = new MimeMessage(session);
		try {
			// 편지보낸시간
			msg.setSentDate(new Date());
			InternetAddress from = new InternetAddress();

			from = new InternetAddress("rudghekt@gmail.com");
			// 이메일 발신자
			msg.setFrom(from);

			// 이메일 수신자
			InternetAddress to = new InternetAddress(dto.getEmail());
			msg.setRecipient(Message.RecipientType.TO, to);
			// 이메일 제목
			msg.setSubject("The Pub가입을 축하합니다!!", "UTF-8");
			// 이메일 내용
			msg.setText(
					"<div><img alt='사진' src='http://postfiles6.naver.net/MjAxNjEyMDhfMTU0/MDAxNDgxMTgxMTk5Nzkw.1sGK8R2adYXtS7Uf8HsdcFqpGL8srTOxL9gfaa77mhEg.6GZL-0Pkei7YMrYB-edj3HBxdNBudxvymqEYZhzAieEg.PNG.rudghekt1004/44444.png?type=w580'><a style='position: relative; top: -50px; left:-425px; font-size: 40px; index:0;' href='http://192.168.10.42:8090/projectpub/loginchk.do?id="
							+ dto.getId() + "'>인증 바로가기</a></div>");

			// 이메일 헤더
			msg.setHeader("content-Type", "text/html");
			// 메일보내기
			javax.mail.Transport.send(msg);
		} catch (AddressException addr_e) {
			addr_e.printStackTrace();
		} catch (MessagingException msg_e) {
			msg_e.printStackTrace();
		}
	}
}// end MailTestclass

class MyAuthentication extends Authenticator {

	PasswordAuthentication pa;

	public MyAuthentication() {

		String id = "rudghekt@gmail.com";// 구글 ID
		String pw = "pskmjfvkldlfnfdn";// 구글 비밀번호
		// ID와 비밀번호를 입력한다.
		pa = new PasswordAuthentication(id, pw);
	}

	// 시스템에서 사용하는 인증정보
	public PasswordAuthentication getPasswordAuthentication() {
		return pa;
	}
}
