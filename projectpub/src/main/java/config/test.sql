
select *from members

--멤버-(어드민1, 판매자 17(판매자는 사업자 넘버 123-45-67890 넣고, 구매자는 NULL삽입), 구매자 15) 맨마지막 컬럼은 2016-달별로 고르게 기입-요일 + 구매자->판매자 등업신청한놈 10명 + 판매자가 펍신청한놈 10명 
select * from members
insert into members values('administer','1q2w3e4r','010-1234-5678','rudghekt@gmail.com','email_agree=Y','sex=m or f','이름',
'생년1950-01-02','userchk=C or S or A','얼굴사진이름확장자까지','allow_chk=Y,n,r','로아웃날2016년05월09일','123-45-67890','가입날2016-05-09')
////////////////////////////////
allow y수락 n기본 r신청





///////////관리자/////////////////

insert into members values('administer','1q2w3e4r','010-1234-5678','rudghekt@gmail.com','Y','m','마스터',
'1980-01-01','A','마스터.png','Y','2016년01월05일','123-45-67890','2016-01-03')




//////////판매자///////////////////////////////////////

insert into members values('seller01','1q2w3e4r','010-1234-1101','rudghekt@gmail.com','Y','m','판매자1',
'1981-05-22','S','인물1.jpg','Y','2016년05월02일','123-45-67890','2016-01-20');


insert into members values('seller02','1q2w3e4r','010-1234-1102','rudghekt@gmail.com','Y','f','판매자2',
'1982-06-04','S','인물2.jpg','Y','2016년06월25일','123-45-67890','2016-02-03');


insert into members values('seller03','1q2w3e4r','010-1234-1103','rudghekt@gmail.com','Y','m','판매자3',
'1983-07-03','S','인물3.jpg','Y','2016년07월24일','123-45-67890','2016-03-03');


insert into members values('seller04','1q2w3e4r','010-1234-1104','rudghekt@gmail.com','Y','f','판매자4',
'1984-08-16','S','인물4.jpg','Y','2016년08월23일','123-45-67890','2016-04-03');


insert into members values('seller05','1q2w3e4r','010-1234-1105','rudghekt@gmail.com','Y','f','판매자5',
'1985-09-18','S','인물5.jpg','Y','2016년09월09일','123-45-67890','2016-05-03');


insert into members values('seller06','1q2w3e4r','010-1234-1106','rudghekt@gmail.com','Y','f','판매자6',
'1986-10-19','S','인물6.jpg','Y','2016년10월08일','123-45-67890','2016-06-03');


insert into members values('seller07','1q2w3e4r','010-1234-1107','rudghekt@gmail.com','Y','f','판매자7',
'1987-11-11','S','인물7.jpg','Y','2016년11월02일','123-45-67890','2016-07-04');


insert into members values('seller08','1q2w3e4r','010-1234-1108','rudghekt@gmail.com','Y','m','판매자8',
'1988-12-24','S','인물8.jpg','Y','2016년11월01일','123-45-67890','2016-08-03');


insert into members values('seller09','1q2w3e4r','010-1234-1109','rudghekt@gmail.com','Y','f','판매자9',
'1989-12-21','S','인물9.jpg','Y','2016년09월19일','123-45-67890','2016-09-03');


insert into members values('seller10','1q2w3e4r','010-1234-1110','rudghekt@gmail.com','Y','m','판매자10',
'1990-01-09','S','인물10.jpg','Y','2016년10월18일','123-45-67890','2016-10-03');


insert into members values('seller11','1q2w3e4r','010-1234-1111','rudghekt@gmail.com','Y','m','판매자11',
'1991-02-07','S','인물11.jpg','Y','2016년04월17일','123-45-67890','2016-03-01');


insert into members values('seller12','1q2w3e4r','010-1234-1112','rudghekt@gmail.com','Y','f','판매자12',
'1992-03-30','S','인물12.jpg','Y','2016년05월16일','123-45-67890','2016-05-03');


insert into members values('seller13','1q2w3e4r','010-1234-1113','rudghekt@gmail.com','Y','m','판매자13',
'1993-04-25','S','인물13.jpg','Y','2016년12월01일','123-45-67890','2016-11-06');


insert into members values('seller14','1q2w3e4r','010-1234-1114','rudghekt@gmail.com','Y','f','판매자14',
'1994-05-10','S','인물14.jpg','Y','2016년12월08일','123-45-67890','2016-12-07');


insert into members values('seller15','1q2w3e4r','010-1234-1115','rudghekt@gmail.com','Y','f','판매자15',
'1995-06-12','S','인물15.jpg','Y','2016년08월09일','123-45-67890','2016-05-08');


insert into members values('seller16','1q2w3e4r','010-1234-1116','rudghekt@gmail.com','Y','f','판매자16',
'1996-07-13','S','인물16.jpg','Y','2016년05월02일','123-45-67890','2016-04-19');


insert into members values('seller17','1q2w3e4r','010-1234-1117','rudghekt@gmail.com','Y','f','판매자17',
'1975-08-24','S','인물17.jpg','Y','2016년10월02일','123-45-67890','2016-08-22');



////////판매자 펍등록 신청/////////////////////////////

insert into members values('pubup001','1q2w3e4r','010-1234-1101','rudghekt@gmail.com','Y','m','PUBup1',
'1981-02-22','S','인물111.jpg','Y','2016년11월16일','123-45-67890','2016-02-20');

insert into members values('pubup002','1q2w3e4r','010-1324-5221','rudghekt@gmail.com','Y','f','PUBup2',
'1982-03-25','S','인물222.jpg','Y','2016년11월12일','123-45-67890','2016-09-29');

insert into members values('pubup003','1q2w3e4r','010-3124-4241','rudghekt@gmail.com','Y','m','PUBup3',
'1983-04-26','S','인물333.jpg','Y','2016년11월17일','123-45-67890','2016-08-19');

insert into members values('pubup004','1q2w3e4r','010-4123-3521','rudghekt@gmail.com','Y','f','PUBup4',
'1983-05-27','S','인물444.jpg','Y','2016년11월02일','123-45-67890','2016-07-13');

insert into members values('pubup005','1q2w3e4r','010-1754-1351','rudghekt@gmail.com','Y','f','PUBup5',
'1983-05-28','S','인물555.jpg','Y','2016년11월02일','123-45-67890','2016-06-05');

insert into members values('pubup006','1q2w3e4r','010-7644-1461','rudghekt@gmail.com','Y','f','PUBup6',
'1984-06-29','S','인물666.jpg','Y','2016년11월15일','123-45-67890','2016-05-14');

insert into members values('pubup007','1q2w3e4r','010-1423-1761','rudghekt@gmail.com','Y','f','PUBup7',
'1971-06-21','S','인물777.jpg','Y','2016년10월15일','123-45-67890','2016-04-13');

insert into members values('pubup008','1q2w3e4r','010-1234-1101','rudghekt@gmail.com','Y','m','PUBup8',
'1978-07-22','S','인물888.jpg','Y','2016년10월14일','123-45-67890','2016-05-22');

insert into members values('pubup009','1q2w3e4r','010-1211-1312','rudghekt@gmail.com','Y','f','PUBup9',
'1990-08-23','S','인물999.jpg','Y','2016년10월23일','123-45-67890','2016-08-11');

insert into members values('pubup010','1q2w3e4r','010-1314-1131','rudghekt@gmail.com','Y','m','PUBup10',
'1992-09-12','S','인물1010.jpg','Y','2016년10월22일','123-45-67890','2016-10-20');



/////////////구매자(사용자)//////////////////////

insert into members values('user0001','1q2w3e4r','010-8765-4321','rudghekt@gmail.com','Y','m','사용자1',
'1970-01-02','C','인물1u.jpg','N','2016년11월09일',NULL,'2016-05-01');


insert into members values('user0002','1q2w3e4r','010-8765-4123','rudghekt@gmail.com','Y','f','사용자2',
'1971-02-13','C','인물2u.jpg','N','2016년11월05일',NULL,'2016-06-26');


insert into members values('user0003','1q2w3e4r','010-8765-4411','rudghekt@gmail.com','Y','m','사용자3',
'1972-04-30','C','인물3u.jpg','N','2016년11월24일',NULL,'2016-07-05');


insert into members values('user0004','1q2w3e4r','010-8765-4151','rudghekt@gmail.com','Y','f','사용자4',
'1973-05-18','C','인물4u.jpg','N','2016년11월23일',NULL,'2016-08-04');


insert into members values('user0005','1q2w3e4r','010-8765-5511','rudghekt@gmail.com','Y','f','사용자5',
'1974-07-13','C','인물5u.jpg','N','2016년11월02일',NULL,'2016-09-03');


insert into members values('user0006','1q2w3e4r','010-8765-1111','rudghekt@gmail.com','Y','f','사용자6',
'1975-12-13','C','인물6u.jpg','N','2016년11월03일',NULL,'2016-10-02');


insert into members values('user0007','1q2w3e4r','010-8765-6565','rudghekt@gmail.com','Y','f','사용자7',
'1975-12-02','C','인물7u.jpg','N','2016년11월09일',NULL,'2016-11-01');


insert into members values('user0008','1q2w3e4r','010-8765-2323','rudghekt@gmail.com','Y','m','사용자8',
'1976-11-12','C','인물8u.jpg','N','2016년11월04일',NULL,'2016-11-08');


insert into members values('user0009','1q2w3e4r','010-8765-1415','rudghekt@gmail.com','Y','f','사용자9',
'1977-11-11','C','인물9u.jpg','N','2016년11월03일',NULL,'2016-10-07');


insert into members values('user0010','1q2w3e4r','010-8765-1142','rudghekt@gmail.com','Y','m','사용자10',
'1978-07-17','C','인물10u.jpg','N','2016년12월02일',NULL,'2016-09-25');


insert into members values('user0011','1q2w3e4r','010-8765-1122','rudghekt@gmail.com','Y','m','사용자11',
'1979-08-28','C','인물11u.jpg','N','2016년12월01일',NULL,'2016-08-21');


insert into members values('user0012','1q2w3e4r','010-8765-1133','rudghekt@gmail.com','Y','f','사용자12',
'1980-09-21','C','인물12u.jpg','N','2016년11월30일',NULL,'2016-07-22');


insert into members values('user0013','1q2w3e4r','010-8765-5312','rudghekt@gmail.com','Y','m','사용자13',
'1981-12-09','C','인물13u.jpg','N','2016년10월19일',NULL,'2016-06-21');


insert into members values('user0014','1q2w3e4r','010-8765-3123','rudghekt@gmail.com','Y','f','사용자14',
'1982-06-07','C','인물14u.jpg','N','2016년10월09일',NULL,'2016-04-30');


insert into members values('user0015','1q2w3e4r','010-8765-1234','rudghekt@gmail.com','Y','f','사용자15',
'1983-05-07','C','인물15u.jpg','N','2016년05월09일',NULL,'2016-03-12');

///////////등업 신청중////////////////////////////////

insert into members values('sellerup1','1q2w3e4r','010-1231-5318','rudghekt@gmail.com','Y','m','등업대기1',
'1991-05-18','C','인물1up.jpg','R','2016년11월11일','123-45-67890','2016-05-12');

insert into members values('sellerup2','1q2w3e4r','010-1411-3118','rudghekt@gmail.com','Y','f','등업대기2',
'1992-07-19','C','인물2up.jpg','R','2016년11월02일','123-45-67890','2016-06-13');

insert into members values('sellerup3','1q2w3e4r','010-1111-3665','rudghekt@gmail.com','Y','m','등업대기3',
'1982-08-12','C','인물3up.jpg','R','2016년11월30일','123-45-67890','2016-07-14');

insert into members values('sellerup4','1q2w3e4r','010-1541-7318','rudghekt@gmail.com','Y','f','등업대기4',
'1983-09-13','C','인물4up.jpg','R','2016년11월11일','123-45-67890','2016-06-15');

insert into members values('sellerup5','1q2w3e4r','010-1131-6318','rudghekt@gmail.com','Y','f','등업대기5',
'1984-10-30','C','인물5up.jpg','R','2016년11월12일','123-45-67890','2016-07-16');

insert into members values('sellerup6','1q2w3e4r','010-1141-5318','rudghekt@gmail.com','Y','f','등업대기6',
'1985-11-23','C','인물6up.jpg','R','2016년11월11일','123-45-67890','2016-08-17');

insert into members values('sellerup7','1q2w3e4r','010-1652-4318','rudghekt@gmail.com','Y','f','등업대기7',
'1985-12-13','C','인물7up.jpg','R','2016년11월13일','123-45-67890','2016-09-18');

insert into members values('sellerup8','1q2w3e4r','010-1531-3318','rudghekt@gmail.com','Y','m','등업대기8',
'1989-10-09','C','인물8up.jpg','R','2016년11월15일','123-45-67890','2016-10-19');

insert into members values('sellerup9','1q2w3e4r','010-6521-2318','rudghekt@gmail.com','Y','f','등업대기9',
'1988-10-08','C','인물9up.jpg','R','2016년11월29일','123-45-67890','2016-11-20');

insert into members values('sellerup10','1q2w3e4r','010-5123-1318','rudghekt@gmail.com','Y','m','등업대기10',
'1987-02-07','C','인물10up.jpg','R','2016년11월20일','123-45-67890','2016-10-20');



--PUB등록(판매자17명 아이디로 등록)
p_pub_chk='R' 이 펍 신청함. c 취소 y수락
select * from pub
insert into pub values(SEQ_pub_p_num.nextval,'판매자ID','abcd.jpg/123.jpg/24.jpg/232.jpg','efgh.jpg','펍 이름','펍 소개<br/>','펍실제 주소','펍가능인원','p_pub_chk=Y','펍우편번호');

////////////////////////신청 수락등록 17개//////////////////////////////////////////////////////////


insert into pub values(SEQ_pub_p_num.nextval,'seller01','펍사진1-1.jpg/펍사진1-2.jpg/펍사진1-3.jpg/펍사진1-4.jpg','메뉴1.png','리얼펍',
'화려한 조명과 디자인 분위기가 <br/>여러분들의 눈을 즐겁게 할것이며,<br/>다양한 문화인들과 즐길수 있으며,<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다.<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된<br/>맛 과 멋을 제공합니다<br/>','광주광역시 북구 밤실로 199-1','20','Y','61162','2016-01-20');

insert into pub values(SEQ_pub_p_num.nextval,'seller02','newmainpub.jpg/펍사진2-2.jpg/펍사진2-3.png/펍사진2-4.jpg','메뉴2.png','가로수펍',
'라까사 정문에 위치하고 있으며 70석 완비.<br/>점심에는 이탈리안 레스토랑으로써 각종 파스타,샐러드 등 <br/>다양한 메뉴를 제공하고 있으며 착한가격의 추천메뉴인 김치볶음밥 제공.<br/>저녁에는 식사와 함께 다양한 수입생,병맥주를 제공.<br/>패션피플들의 아지트.자연산식재료를 활용한 건강한 맛집!!<br/>','서울특별시 강남구 도산대로1길 80','15','Y','06027','2016-01-20');


insert into pub values(SEQ_pub_p_num.nextval,'seller03','펍사진3-1.jpg/펍사진3-2.jpg/펍사진3-3.jpg/펍사진3-4.jpg','메뉴3.png','플래티넘비어펍',
'화려한 조명과 디자인 분위기가 <br/>여러분들의 눈을 즐겁게 할것이며<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된 <br/>맛 과 멋을 제공합니다<br/>','서울 마포구 와우산로23길 35-9','15','Y','04055','2016-02-20');


insert into pub values(SEQ_pub_p_num.nextval,'seller04','펍사진4-1.jpg/펍사진4-2.jpg/펍사진4-3.jpg/펍사진4-4.jpg','메뉴4.png','세븐브로이펍',
'국내최초 에일수제맥주 전문 국내 3번째 맥주회사입니다.<br/>국내 에일맥주의 선도주자이며 6가지의 수제맥주가 준비되어있습니다.<br/>수제맥주를 사랑하시는 고객님들께 200%만족을 드릴수있는 세븐브로이펍입니다 <br/>화려한 조명과 디자인 분위기가 <br/>여러분들의 눈을 즐겁게 할것이며<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된 <br/>맛 과 멋을 제공합니다<br/>','경상북도 포항시 북구 불종로 51','15','Y','37735','2016-03-20');


insert into pub values(SEQ_pub_p_num.nextval,'seller05','펍사진5-1.jpg/펍사진5-2.jpg/펍사진5-3.jpg/펍사진5-4.jpg','메뉴5.png','POP&Pub',
'화려한 조명과 디자인 분위기가 <br/>여러분들의 눈을 즐겁게 할것이며<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된 <br/>맛 과 멋을 제공합니다<br/>','충청북도 충주시 성서4길 11','15','Y','27387','2016-04-20');


insert into pub values(SEQ_pub_p_num.nextval,'seller06','펍사진6-1.jpg/펍사진6-2.jpg/펍사진6-3.jpg/펍사진6-4.jpg','메뉴6.png','G Pub',
'화려한 조명과 디자인 분위기가 <br/>여러분들의 눈을 즐겁게 할것이며<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된 <br/>맛 과 멋을 제공합니다<br/>','인천광역시 남구 주안로104번길 25','10','Y','22135','2016-05-20');


insert into pub values(SEQ_pub_p_num.nextval,'seller07','펍사진7-1.jpg/펍사진7-2.jpg/펍사진7-3.jpg/펍사진7-4.jpg','메뉴7.png','토크펍',
'화려한 조명과 디자인 분위기가 <br/>여러분들의 눈을 즐겁게 할것이며<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된 <br/>맛 과 멋을 제공합니다<br/>','강원도 강릉시 하슬라로192번길 13','10','Y','25511','2016-06-20');


insert into pub values(SEQ_pub_p_num.nextval,'seller08','펍사진8-1.jpg/펍사진8-2.jpg/펍사진8-3.jpg/펍사진8-4.jpg','메뉴8.png','725빌리지펍',
'725빌리지펍은 유성구 동서대로 725 어울림하트 상가동에 위치한 동네술집입니다.<br/>725빌리지펍에서는 가족과 친구와 또는 동네주민들과<br/>편안하게 마실나와 시원한 생맥주와 치킨을 그리고 피자를,<br/>소주를 원하시는 분들은 얼큰한 탕에 소주를<br/>즐기실 수 있도록 메뉴 구성을 하고 있습니다.<br/>100인치 스크린이 설치된 빔 프로젝트는 스포츠를<br/>좋아하시는 분들을 위해 실시간 스포츠 중계도 하고 있습니다.<br/>','대전광역시 유성구 동서대로 725 어울림하트 아파트 상가동','15','Y','34195','2016-07-20');


insert into pub values(SEQ_pub_p_num.nextval,'seller09','펍사진9-1.jpg/펍사진9-2.jpg/펍사진9-3.jpg/펍사진9-4.jpg','메뉴9.png','할렘펍',
'재미있는 다트 게임 한판 하고<br/>화려한 조명과 디자인 분위기가 <br/>여러분들의 눈을 즐겁게 할것입니다.<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된<br/> 맛 과 멋을 제공합니다<br/>','경기도 고양시 일산서구 산현로 11','20','Y','10343','2016-07-20');


insert into pub values(SEQ_pub_p_num.nextval,'seller10','펍사진10-1.jpg/펍사진10-2.jpg/펍사진10-3.jpg/펍사진10-4.jpg','메뉴10.png','OMG ghost PUB',
'상세설명공포 컨셉에 PUB 입니다 .<br/>술을 안드셔도 즐겁게 놀수있는곳.<br/>혼자오셔도 즐겁게 놀수있는곳. 오세요 ^^ <br/>재미 있고 신선한 공포를 느끼실수 있습니다.<br/> 여러분들의 눈을 즐겁게 할것이며<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된 <br/>맛 과 멋을 제공합니다<br/>','광주광역시 동구 충장로 101-11','15','Y','61482','2016-08-20');


insert into pub values(SEQ_pub_p_num.nextval,'seller11','펍사진11-1.jpg/펍사진11-2.jpg/펍사진11-3.jpg/펍사진11-4.jpg','메뉴11.png','노노펍라운지',
'특이한 까페느낌의 분위가가 눈 길을 끌며<br/>화려한 조명과 디자인 분위기가 <br/>여러분들의 눈을 즐겁게 할것이며<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된<br/> 맛 과 멋을 제공합니다<br/>','서울특별시 강동구 양재대로87길 14','20','Y','05405','2016-09-20');


insert into pub values(SEQ_pub_p_num.nextval,'seller12','펍사진12-1.jpg/펍사진12-2.jpg/펍사진12-3.jpg/펍사진12-4.jpg','메뉴12.png','릴렉스펍',
'다양한 경기등 스크린을 통한 <br/>이벤트가 진행중이며<br/>화려한 조명과 디자인 분위기가 <br/>여러분들의 눈을 즐겁게 할것이며<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된 <br/>맛 과 멋을 제공합니다<br/>','경기도 부천시 부천로23번길 17','20','Y','14634','2016-09-20');


insert into pub values(SEQ_pub_p_num.nextval,'seller13','펍사진13-1.jpg/펍사진13-2.jpg/펍사진13-3.jpg/펍사진13-4.jpg','메뉴13.png','개돼지펍',
'화려한 조명과 디자인 분위기가 <br/>여러분들의 눈을 즐겁게 할것이며<br/>모든벽의 문구가 눈에뛰게 하며<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된 <br/>맛 과 멋을 제공합니다<br/>','서울특별시 금천구 벚꽃로38길 32-67','20','Y','08509','2016-10-20');


insert into pub values(SEQ_pub_p_num.nextval,'seller14','펍사진14-1.png/펍사진14-2.png/펍사진14-3.png/펍사진14-4.png','메뉴14.png','제이와이펍',
'수제맥주&세계맥주&whisky<br/>혼술.파티.망년회.신년회.모임.회식.피로연 환영!<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된<br/> 맛 과 분위기를 제공합니다<br/>','경기도 안양시 동안구 관평로182번길 53 광장상가','10','Y','14066','2016-11-20');


insert into pub values(SEQ_pub_p_num.nextval,'seller15','펍사진15-1.jpg/펍사진15-2.jpg/펍사진15-3.jpg/펍사진15-4.jpg','메뉴15.png','247펍라운지 해운대본점',
'펍과 라운지의 만남<br/><br/><br/>현대적인 시각과 자유로움의 만남이라고 할 수 있는 247 PUB LOUNGE.<br/>펍의 자유로움과 라운지의 현대적임을 한곳에 표현한 곳으로 시대적 발상과 현대적인 트랜드 성향을 고루 갖춘 공간이다.<br/>BAR에서 술과 음식 그리고 DJ의 Electronic Music 까지 합쳐진 곳이라 할수있다.<br/>쉐프,믹솔로지스트,DJ,소몰리에 등 전문적인 교육을 통해 양성된 인력으로 최고의 서비스를 제공할수 있는 공간입니다. <br/><br/>Night Life를 한층더 높은 수준으로 끌어 올린 공간 247 Pub Lounge 는 <br/>차별화 된 서비스로 대중에게 한층더 고급화된 맛과 <br/>분위기를 연출하며 다양한 퍼포먼스 이벤트까지 시각과 미각 등 오감을 만족시키기 위한 공간입니다.<br/>세련되고 럭셔리한 공간 시크하고 쿨한 스타일의 247 Pub 라운지는 <br/>퓨전 Food와 클래식 메뉴, 파스타,라이스,커피,위스키,칵테일,샴페인,와인등을 마실수 있으며,<br/>다양한 음악을 접할수 있는 트랜디한 라운지로써 새로운 라이프 스타일을 제공합니다 <br/>','부산광역시 해운대구 중동1로 44-2','15','Y','48095','2016-05-20');


insert into pub values(SEQ_pub_p_num.nextval,'seller16','펍사진16-1.jpg/펍사진16-2.jpg/펍사진16-3.jpg/펍사진16-4.jpg','메뉴16.png','재즈펍318',
'화려한 조명과 디자인 분위기가 <br/>여러분들의 눈을 즐겁게 할것이며<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된 <br/>맛 과 멋을 제공합니다<br/>','부산광역시 부산진구 서전로10번길 22-3','20','Y','47291','2016-06-20');


insert into pub values(SEQ_pub_p_num.nextval,'seller17','펍사진17-1.png/펍사진17-2.png/펍사진17-3.png/펍사진17-4.jpg','메뉴17.png','바이닐펍 뮤즈온',
'LP음악을 즐길 수 있는 <br/>빈티지한 공간 으로<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된 <br/>맛 과 멋을 제공합니다<br/>','부산광역시 해운대구 중동1로 39','10','Y','48095','2016-07-20');

/////////////신 청  중  insert 10개//////////////////////////////////////////////////////////////////////

select * from pub
delete from pub

insert into pub values(SEQ_pub_p_num.nextval,'sellerup1','펍사진18-1.jpg/펍사진18-2.jpg/펍사진18-3.jpg/펍사진18-4.jpg','메뉴18.png','개돼지펍',
'화려한 조명과 디자인 분위기가 <br/>여러분들의 눈을 즐겁게 할것이며<br/>모든벽의 문구가 눈에뛰게 하며<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된 <br/>맛 과 멋을 제공합니다<br/>','서울특별시 금천구 벚꽃로38길 32-67','20','R','08509',null);


insert into pub values(SEQ_pub_p_num.nextval,'sellerup2','펍사진19-1.png/펍사진19-2.png/펍사진19-3.png/펍사진19-4.png','메뉴19.png','제이와이펍',
'수제맥주&세계맥주&whisky<br/>혼술.파티.망년회.신년회.모임.회식.피로연 환영!<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된<br/> 맛 과 분위기를 제공합니다<br/>','경기도 안양시 동안구 관평로182번길 53 광장상가','10','R','14066',null);


insert into pub values(SEQ_pub_p_num.nextval,'sellerup3','펍사진20-1.jpg/펍사진20-2.jpg/펍사진20-3.jpg/펍사진20-4.jpg','메뉴20.png','247펍라운지 해운대본점',
'펍과 라운지의 만남<br/><br/><br/>현대적인 시각과 자유로움의 만남이라고 할 수 있는 247 PUB LOUNGE.<br/>펍의 자유로움과 라운지의 현대적임을 한곳에 표현한 곳으로 시대적 발상과 현대적인 트랜드 성향을 고루 갖춘 공간이다.<br/>BAR에서 술과 음식 그리고 DJ의 Electronic Music 까지 합쳐진 곳이라 할수있다.<br/>쉐프,믹솔로지스트,DJ,소몰리에 등 전문적인 교육을 통해 양성된 인력으로 최고의 서비스를 제공할수 있는 공간입니다. <br/><br/>Night Life를 한층더 높은 수준으로 끌어 올린 공간 247 Pub Lounge 는 <br/>차별화 된 서비스로 대중에게 한층더 고급화된 맛과 <br/>분위기를 연출하며 다양한 퍼포먼스 이벤트까지 시각과 미각 등 오감을 만족시키기 위한 공간입니다.<br/>세련되고 럭셔리한 공간 시크하고 쿨한 스타일의 247 Pub 라운지는 <br/>퓨전 Food와 클래식 메뉴, 파스타,라이스,커피,위스키,칵테일,샴페인,와인등을 마실수 있으며,<br/>다양한 음악을 접할수 있는 트랜디한 라운지로써 새로운 라이프 스타일을 제공합니다 <br/>','부산광역시 해운대구 중동1로 44-2','15','R','48095',null);


insert into pub values(SEQ_pub_p_num.nextval,'sellerup4','펍사진21-1.jpg/펍사진21-2.jpg/펍사진21-3.jpg/펍사진21-4.jpg','메뉴21.png','재즈펍318',
'화려한 조명과 디자인 분위기가 <br/>여러분들의 눈을 즐겁게 할것이며<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된 <br/>맛 과 멋을 제공합니다<br/>','부산광역시 부산진구 서전로10번길 22-3','20','R','47291',null);


insert into pub values(SEQ_pub_p_num.nextval,'sellerup5','펍사진22-1.png/펍사진22-2.png/펍사진22-3.png/펍사진22-4.jpg','메뉴22.png','바이닐펍 뮤즈온',
'LP음악을 즐길 수 있는 <br/>빈티지한 공간 으로<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된 <br/>맛 과 멋을 제공합니다<br/>','부산광역시 해운대구 중동1로 39','10','R','48095',null);


insert into pub values(SEQ_pub_p_num.nextval,'sellerup6','펍사진23-1.jpg/펍사진23-2.jpg/펍사진23-3.jpg/펍사진23-4.jpg','메뉴23.png','개돼지펍',
'화려한 조명과 디자인 분위기가 <br/>여러분들의 눈을 즐겁게 할것이며<br/>모든벽의 문구가 눈에뛰게 하며<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된 <br/>맛 과 멋을 제공합니다<br/>','서울특별시 금천구 벚꽃로38길 32-67','20','R','08509',null);


insert into pub values(SEQ_pub_p_num.nextval,'sellerup7','펍사진24-1.png/펍사진24-2.png/펍사진24-3.png/펍사진24-4.png','메뉴24.png','제이와이펍',
'수제맥주&세계맥주&whisky<br/>혼술.파티.망년회.신년회.모임.회식.피로연 환영!<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된<br/> 맛 과 분위기를 제공합니다<br/>','경기도 안양시 동안구 관평로182번길 53 광장상가','10','R','14066',null);


insert into pub values(SEQ_pub_p_num.nextval,'sellerup8','펍사진25-1.jpg/펍사진25-2.jpg/펍사진25-3.jpg/펍사진25-4.jpg','메뉴25.png','247펍라운지 해운대본점',
'펍과 라운지의 만남<br/><br/><br/>현대적인 시각과 자유로움의 만남이라고 할 수 있는 247 PUB LOUNGE.<br/>펍의 자유로움과 라운지의 현대적임을 한곳에 표현한 곳으로 시대적 발상과 현대적인 트랜드 성향을 고루 갖춘 공간이다.<br/>BAR에서 술과 음식 그리고 DJ의 Electronic Music 까지 합쳐진 곳이라 할수있다.<br/>쉐프,믹솔로지스트,DJ,소몰리에 등 전문적인 교육을 통해 양성된 인력으로 최고의 서비스를 제공할수 있는 공간입니다. <br/><br/>Night Life를 한층더 높은 수준으로 끌어 올린 공간 247 Pub Lounge 는 <br/>차별화 된 서비스로 대중에게 한층더 고급화된 맛과 <br/>분위기를 연출하며 다양한 퍼포먼스 이벤트까지 시각과 미각 등 오감을 만족시키기 위한 공간입니다.<br/>세련되고 럭셔리한 공간 시크하고 쿨한 스타일의 247 Pub 라운지는 <br/>퓨전 Food와 클래식 메뉴, 파스타,라이스,커피,위스키,칵테일,샴페인,와인등을 마실수 있으며,<br/>다양한 음악을 접할수 있는 트랜디한 라운지로써 새로운 라이프 스타일을 제공합니다 <br/>','부산광역시 해운대구 중동1로 44-2','15','R','48095',null);


insert into pub values(SEQ_pub_p_num.nextval,'sellerup9','펍사진26-1.jpg/펍사진26-2.jpg/펍사진26-3.jpg/펍사진26-4.jpg','메뉴26.png','재즈펍318',
'화려한 조명과 디자인 분위기가 <br/>여러분들의 눈을 즐겁게 할것이며<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된 <br/>맛 과 멋을 제공합니다<br/>','부산광역시 부산진구 서전로10번길 22-3','20','R','47291',null);


insert into pub values(SEQ_pub_p_num.nextval,'sellerup10','펍사진27-1.png/펍사진27-2.png/펍사진27-3.png/펍사진27-4.jpg','메뉴27.png','바이닐펍 뮤즈온',
'LP음악을 즐길 수 있는 <br/>빈티지한 공간 으로<br/>다양한 문화인들과 즐길수 있으며<br/>서구적 느낌을 받으 실 수있습니다.<br/>다양한 메뉴와 맥주 가 준비되어 있습니다<br/>패션피플들의 아지트.<br/>자연산식재료를 활용한 건강한 맛집!!<br/>차별화 된 서비스로 대중에게 한층더 고급화된 <br/>맛 과 멋을 제공합니다<br/>','부산광역시 해운대구 중동1로 39','10','R','48095',null);

--쿠폰 발급(구매자 10명에 종류별로 3개씩 발급)
select * from coupon


insert into coupon values(SEQ_coupon_c_num.nextval,'구매자ID','할인내역','쿠폰시리얼번호',to_char(sysdate,'YYYY"년"MM"월"DD"일"'),'C_USE=N')


/////////////////////쿠폰 발급//////////////////////////////////////////


insert into coupon values(SEQ_coupon_c_num.nextval,'user0001','25%할인','TPHS6EY7X5',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'Y');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0001','15%할인','JF46H4FUX0',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0001','5%할인','WNXPYXW79V',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');


insert into coupon values(SEQ_coupon_c_num.nextval,'user0002','25%할인','XSG307T3AL',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0002','15%할인','LGK7CSA6FW',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0002','5%할인','4DDS4I6IEN',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');


insert into coupon values(SEQ_coupon_c_num.nextval,'user0003','25%할인','9YV2Q3T05Z',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0003','15%할인','45IVY09CUH',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0003','5%할인','0JYCKR1PF0',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');


insert into coupon values(SEQ_coupon_c_num.nextval,'user0004','25%할인','03BFDX7T5V',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0004','15%할인','W8A59MC7UK',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0004','5%할인','CNVFE1XMTU',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');


insert into coupon values(SEQ_coupon_c_num.nextval,'user0004','25%할인','32BCKU90VE',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0004','15%할인','UU7VMOC644',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0004','5%할인','FG6Y5JWY4V',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');



insert into coupon values(SEQ_coupon_c_num.nextval,'user0005','25%할인','QQ948MVK1D',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0005','15%할인','C392C35TDO',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0005','5%할인','6HL1D3VKIV',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');



insert into coupon values(SEQ_coupon_c_num.nextval,'user0006','25%할인','IXA2MB6UX9',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0006','15%할인','0G4TLKMOCR',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0006','5%할인','DYS6KD40X3',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');




insert into coupon values(SEQ_coupon_c_num.nextval,'user0007','25%할인','Q23GV7C0LI',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0007','15%할인','D3Q7AFSJZL',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0007','5%할인','XXBONY7HCS',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');



insert into coupon values(SEQ_coupon_c_num.nextval,'user0008','25%할인','BHFQ5D3QFG',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0008','15%할인','JCNZRCQONE',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0008','5%할인','BYO8IEXVIF',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');



insert into coupon values(SEQ_coupon_c_num.nextval,'user0009','25%할인','4UJ129O7Q5',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0009','15%할인','PI9EGXMLJR',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0009','5%할인','Y2MUTM951M',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');



insert into coupon values(SEQ_coupon_c_num.nextval,'user0010','25%할인','X1QGEWS1LH',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0010','15%할인','HX4DEZNFDB',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');

insert into coupon values(SEQ_coupon_c_num.nextval,'user0010','5%할인','LH8SX2RERT',to_char(sysdate+20,'YYYY"년"MM"월"DD"일"'),'N');






--예약
select * from reservation
select * from pub
res_sellchk=N 이면 예약신청(5), C 예약 거부(3), Y예약 성공(7명,성공한 사람들에게는 쿠폰테이블의 구매자ID에 해당하는 시퀀스 삽입)  수락인원-> 거부-> 예약신청순으로 삽입
insert into reservation values(SEQ_reservation_res_num.nextval,펍시퀀스넘버,'구매자ID','예약인원수',to_char(sysdate,'YYYY"-"MM"-"DD'),'res_concheck=Y','res_sellchk=N or C or Y',18~22시,구매자쿠폰시퀀스(or NULL));

///////////예약 성공////////////////////////////////////////
select * from coupon

insert into reservation values(SEQ_reservation_res_num.nextval,1,'user0001','5','2016-12-01','Y','Y','18시',1);

insert into reservation values(SEQ_reservation_res_num.nextval,1,'user0002','10','2016-12-02','Y','Y','19시',5);

insert into reservation values(SEQ_reservation_res_num.nextval,1,'user0003','5','2016-12-03','Y','Y','20시',9);

insert into reservation values(SEQ_reservation_res_num.nextval,1,'user0004','10','2016-12-05','Y','Y','21시',10);

insert into reservation values(SEQ_reservation_res_num.nextval,1,'user0005','5','2016-12-03','Y','Y','22시',14);

insert into reservation values(SEQ_reservation_res_num.nextval,1,'user0006','10','2016-12-06','Y','Y','22시',19);

insert into reservation values(SEQ_reservation_res_num.nextval,1,'user0007','10','2016-12-03','Y','Y','18시',22);


//////////예약 거부/////////////////////////////////////////


insert into reservation values(SEQ_reservation_res_num.nextval,1,'user0008','10','2016-12-01','Y','C','20시',24);

insert into reservation values(SEQ_reservation_res_num.nextval,1,'user0009','5','2016-12-03','Y','C','22시',28);

insert into reservation values(SEQ_reservation_res_num.nextval,1,'user0010','10','2016-12-07','Y','C','21시',33);



/////////예약 신청////////////////////////////////////////


insert into reservation values(SEQ_reservation_res_num.nextval,1,'user0011','10','2016-12-07','Y','N','20시',null);

insert into reservation values(SEQ_reservation_res_num.nextval,1,'user0012','5','2016-12-02','Y','N','21시',null);

insert into reservation values(SEQ_reservation_res_num.nextval,1,'user0013','10','2016-12-01','Y','N','22시',null);

insert into reservation values(SEQ_reservation_res_num.nextval,1,'user0014','5','2016-12-02','Y','N','18시',null);

insert into reservation values(SEQ_reservation_res_num.nextval,1,'user0015','10','2016-12-05','Y','N','19시',null);


--쪽지 등록(한사람이 10개씩 보내기)
select * from talk
insert into talk values(SEQ_talk_t_num.nextval,'보내는사람','받는사람','메세지내용<br/>',to_char(sysdate,'YYYY"-"MM"-"DD HH24:MI:SS'),'N','쪽지제목')

//////////////유저가 -> 판매자에게 ////////////////


insert into talk values(SEQ_talk_t_num.nextval,'user0001','seller01','안녕하세요1','2016-12-01 15:02:22','N','테스트쪽지1');

insert into talk values(SEQ_talk_t_num.nextval,'user0002','seller02','안녕하세요2','2016-12-03 10:05:22','N','테스트쪽지2');

insert into talk values(SEQ_talk_t_num.nextval,'user0003','seller03','안녕하세요3','2016-12-01 11:06:22','N','테스트쪽지3');

insert into talk values(SEQ_talk_t_num.nextval,'user0004','seller04','안녕하세요4','2016-12-01 12:07:22','N','테스트쪽지4');

insert into talk values(SEQ_talk_t_num.nextval,'user0005','seller05','안녕하세요5','2016-12-01 13:08:22','N','테스트쪽지5');

insert into talk values(SEQ_talk_t_num.nextval,'user0006','seller06','안녕하세요6','2016-12-01 16:09:22','N','테스트쪽지6');

insert into talk values(SEQ_talk_t_num.nextval,'user0007','seller07','안녕하세요7','2016-12-01 17:30:22','N','테스트쪽지7');

insert into talk values(SEQ_talk_t_num.nextval,'user0008','seller08','안녕하세요8','2016-12-01 18:01:22','N','테스트쪽지8');

insert into talk values(SEQ_talk_t_num.nextval,'user0009','seller09','안녕하세요9','2016-12-01 19:02:22','N','테스트쪽지9');

insert into talk values(SEQ_talk_t_num.nextval,'user0010','seller10','안녕하세요10','2016-12-01 23:25:22','N','테스트쪽지10');


//////////////10명의 유저가 1명의 판매자에게///////////////////////////

insert into talk values(SEQ_talk_t_num.nextval,'user0001','seller01','안녕하세요1','2016-12-01 10:01:22','N','10명이1명에게1');

insert into talk values(SEQ_talk_t_num.nextval,'user0002','seller01','안녕하세요2','2016-12-02 12:02:22','N','10명이1명에게2');

insert into talk values(SEQ_talk_t_num.nextval,'user0003','seller01','안녕하세요3','2016-12-03 13:03:22','N','10명이1명에게3');

insert into talk values(SEQ_talk_t_num.nextval,'user0004','seller01','안녕하세요4','2016-12-04 14:04:22','N','10명이1명에게4');

insert into talk values(SEQ_talk_t_num.nextval,'user0005','seller01','안녕하세요5','2016-12-05 15:23:22','N','10명이1명에게5');

insert into talk values(SEQ_talk_t_num.nextval,'user0006','seller01','안녕하세요6','2016-12-06 16:24:22','N','10명이1명에게6');

insert into talk values(SEQ_talk_t_num.nextval,'user0007','seller01','안녕하세요7','2016-12-07 17:25:22','N','10명이1명에게7');

insert into talk values(SEQ_talk_t_num.nextval,'user0008','seller01','안녕하세요8','2016-12-01 18:46:22','N','10명이1명에게8');

insert into talk values(SEQ_talk_t_num.nextval,'user0009','seller01','안녕하세요9','2016-12-02 22:48:22','N','10명이1명에게9');

insert into talk values(SEQ_talk_t_num.nextval,'user0010','seller01','안녕하세요10','2016-12-03 23:55:22','N','10명이1명에게10');


//////////////판매자가 -> 유저에게 ////////////////

insert into talk values(SEQ_talk_t_num.nextval,'seller01','user0001','안녕하세요','2016-12-01 19:45:22','N','판이유에게1');

insert into talk values(SEQ_talk_t_num.nextval,'seller02','user0002','안녕하세요','2016-12-02 22:46:22','N','판이유에게2');

insert into talk values(SEQ_talk_t_num.nextval,'seller03','user0003','안녕하세요','2016-12-03 23:10:22','N','판이유에게3');

insert into talk values(SEQ_talk_t_num.nextval,'seller04','user0004','안녕하세요','2016-12-04 22:33:22','N','판이유에게4');

insert into talk values(SEQ_talk_t_num.nextval,'seller05','user0005','안녕하세요','2016-12-05 20:31:22','N','판이유에게5');

insert into talk values(SEQ_talk_t_num.nextval,'seller06','user0006','안녕하세요','2016-12-06 09:03:22','N','판이유에게6');

insert into talk values(SEQ_talk_t_num.nextval,'seller07','user0007','안녕하세요','2016-12-07 11:56:22','N','판이유에게7');

insert into talk values(SEQ_talk_t_num.nextval,'seller08','user0008','안녕하세요','2016-12-07 12:21:22','N','판이유에게8');

insert into talk values(SEQ_talk_t_num.nextval,'seller09','user0009','안녕하세요','2016-12-02 12:31:22','N','판이유에게9');

insert into talk values(SEQ_talk_t_num.nextval,'seller10','user0010','안녕하세요','2016-12-04 16:25:22','N','판이유에게10');







--별점(펍당 5명씩 별점넣기)
select * from stars
insert into stars values(pub시퀀스 넘,'구매자id',4)

insert into stars values(1,'user0001',4);
insert into stars values(1,'user0002',3);
insert into stars values(1,'user0003',4);
insert into stars values(1,'user0004',3);
insert into stars values(1,'user0005',4);

select * from stars
update stars set s_stars=5 where p_num=2 and id='user0005'



insert into stars values(2,'user0001',4.5);
insert into stars values(2,'user0002',3.5);
insert into stars values(2,'user0003',4);
insert into stars values(2,'user0004',3.5);
insert into stars values(2,'user0005',4.5);


insert into stars values(3,'user0001',4);
insert into stars values(3,'user0002',3);
insert into stars values(3,'user0003',4);
insert into stars values(3,'user0004',3);
insert into stars values(3,'user0005',4);



insert into stars values(4,'user0001',4.5);
insert into stars values(4,'user0002',3.5);
insert into stars values(4,'user0003',4.5);
insert into stars values(4,'user0004',3.5);
insert into stars values(4,'user0005',4.5);



insert into stars values(5,'user0001',4);
insert into stars values(5,'user0002',3);
insert into stars values(5,'user0003',4);
insert into stars values(5,'user0004',3);
insert into stars values(5,'user0005',4);



insert into stars values(6,'user0001',4.5);
insert into stars values(6,'user0002',3.5);
insert into stars values(6,'user0003',4);
insert into stars values(6,'user0004',3);
insert into stars values(6,'user0005',4);


insert into stars values(7,'user0001',4);
insert into stars values(7,'user0002',3);
insert into stars values(7,'user0003',4);
insert into stars values(7,'user0004',3);
insert into stars values(7,'user0005',4);


insert into stars values(8,'user0001',4.5);
insert into stars values(8,'user0002',3);
insert into stars values(8,'user0003',4);
insert into stars values(8,'user0004',3.5);
insert into stars values(8,'user0005',4.5);


insert into stars values(9,'user0001',4);
insert into stars values(9,'user0002',3);
insert into stars values(9,'user0003',4.5);
insert into stars values(9,'user0004',3);
insert into stars values(9,'user0005',4);


insert into stars values(10,'user0001',4);
insert into stars values(10,'user0002',3.5);
insert into stars values(10,'user0003',4);
insert into stars values(10,'user0004',3);
insert into stars values(10,'user0005',4);


insert into stars values(11,'user0001',4);
insert into stars values(11,'user0002',3.5);
insert into stars values(11,'user0003',4);
insert into stars values(11,'user0004',3.5);
insert into stars values(11,'user0005',4);


insert into stars values(12,'user0001',4);
insert into stars values(12,'user0002',3);
insert into stars values(12,'user0003',2);
insert into stars values(12,'user0004',2);
insert into stars values(12,'user0005',4);


insert into stars values(13,'user0001',4);
insert into stars values(13,'user0002',2.5);
insert into stars values(13,'user0003',4);
insert into stars values(13,'user0004',2.5);
insert into stars values(13,'user0005',4);


insert into stars values(14,'user0001',2.5);
insert into stars values(14,'user0002',2);
insert into stars values(14,'user0003',2.5);
insert into stars values(14,'user0004',3);
insert into stars values(14,'user0005',4);


insert into stars values(15,'user0001',2);
insert into stars values(15,'user0002',2);
insert into stars values(15,'user0003',2);
insert into stars values(15,'user0004',2.5);
insert into stars values(15,'user0005',2.5);


insert into stars values(16,'user0001',1);
insert into stars values(16,'user0002',2);
insert into stars values(16,'user0003',2.5);
insert into stars values(16,'user0004',3.5);
insert into stars values(16,'user0005',4.5);


insert into stars values(17,'user0001',1);
insert into stars values(17,'user0002',2);
insert into stars values(17,'user0003',3);
insert into stars values(17,'user0004',4);
insert into stars values(17,'user0005',5);






select * from social -------소셜---후기게시판--------

insert into SOCIAL values(SEQ_social_s_num.nextval, '아이디', '사진이름', '게시판 내용', 0, to_char(sysdate,'YYYY"년"MM"월"DD"일"'))


insert into SOCIAL values(SEQ_social_s_num.nextval,'user0001','후1.jpg',
'두암동 리얼펍의 기본안주<br/><br/>새우칩칩칩<br/><br/>마이떠떠떠<br/><br/>하지만 배불러서 ㅠ.ㅠ많이 못먹음..<br/><br/>사람들이 북적북적~<br/><br/>두암동 술집 리얼펍 다녀오세용<br/><br/>안주도 맛있공~ 분위기도 좋공~ 술도 맛있공~<br/><br/>사장님이 젊고 이쁘공 잘생겼공~~<br/><br/>리얼펍으로 맥주한잔 하러 조만간 갈께용<br/>',0,'2016년12월01일');

insert into SOCIAL values(SEQ_social_s_num.nextval,'user0002','후2.jpg',
'가로수펍 메뉴 정말 많네요?ㅎㅎㅎㅎㅎ<br/>그리고 하나같이 다 맛있어요!<br/>가로수길 맛집인가봐요<br/><br/>신나게먹고,애기도 정말 많이했어요!<br/>너무너무 즐거웠답니다~~~~~~!!!<br/>좋은자리 마련해주셔서 정말 감사해요^^<br/>',0,'2016년12월02일');

insert into SOCIAL values(SEQ_social_s_num.nextval,'user0003','후3.jpg',
'메인부터 간단한 안주까지 많다~<br/>맥주도 설명이 잘되어있다<br/>골라 마시기~<br/>적당한 거품 좋구요~~<br/>신선하고<br/>시원했구요**<br/>상큼하면서도 뭔가모를<br/>끝맛이 나뭇잎맛이ㅎㅎㅎ<br/>근데 맛있었다ㅎㅎㅎ<br/>마지막에 조금남은건 써서<br/>남겨놓고 옴ㅋㅋㅋㅋ<br/>3명 다 똑같이 느낌ㅋㅋㅋㅋㅋ<br/>빵위에 토마토.하몽<br/>얹고 소스주시는거 얹어서 먹어보았다<br/>나쁘지않았다ㅎㅎㅎ<br/>소스가 신기했다<br/>생마늘때문인지 저렇게 해서먹으니까<br/>느끼함을 잡아줬다<br/>근데 입에선 마늘 냄시가ㅋㅋㅋㅋㅋ<br/><br/>*여긴 간단하게 한잔하기 좋은곳인거같다<br/>사람들도 북적북적 <br/>담에 또 가게되면<br/>딴거 먹어야지 <br/>',0,'2016년12월03일');

insert into SOCIAL values(SEQ_social_s_num.nextval,'user0004','후4.jpg',
'일단 수제맥주는 보통 있는 종류들이 다있어요 <br/>피스너 마일데일 인디아페일에일 스타우트 바이젠 임페리얼IPA와같은<br/>종류가 있고 이 여섯가지 맥주를 맛볼 수 있는 샘플러 메뉴가 있습니다.<br/>가격은 보통425ml 7000원 650ml 9000원이에요.<br/>칼스버그 생맥주도 있네요<br/><br/>맥주는 취향대로 주문했는데 시기하게도 네 명이 서로 각각 다른종류를 선택 ㅎㅎ<br/>필스너/에일/바이젠/스타우트 한잔씩<br/><br/>마지막으로 마셔본 임페리얼IPA(7도)도수가 높은데도 인디아페일에일보다 더 향이 좋다고 해야 하나요..<br/>맛있었어요. ㅎㅎ 425ml로 주문하니 잔도 예쁘고 가격은 다른 맥주 보다 약간 더 비쌉니다.<br/><br/>맛있는 수제맥주와 맛있는 안주 그리고 좋은 사람들과 함께라면 어디든 좋지만,<br/>세븐브이로펍은 깔끔하고,밝고 넓고 쾌적한 분위기라서 더 좋았던 것 같아요.직원분들도 매우 친절하셨구요~<br/>',0,'2016년12월04일');

insert into SOCIAL values(SEQ_social_s_num.nextval,'user0005','후5.jpg',
'팝 펍에는 외국같은 분위기 였어요..<br/>실제로 외국인 분들도 많이있으시구요<br/>정말 자유? 해외파티 분위기였구요 <br/>너무너무 재미있더라고 분위가 너무 좋아요<br/>음식 이나 술 먹는 재미보다 <br/>여러나라 사람 만나는 재미가 더있더라고요ㅎㅎㅎ<br/>사실 음식 퀄리티도 정말 죽여 줍니다!!ㅋㅋㅋㅋㅋ<br/>강추 합니다~!!<br/>',0,'2016년12월05일');

insert into SOCIAL values(SEQ_social_s_num.nextval,'user0006','후6.jpg',
'친구와 주안역에서 가엽게 한 잔 하려고 방문한 곳인데<br/>요즘 부쩍 술이 약해진 친구와 나 12도짜리 와인한병 나눠 마시면 딱 좋아서<br/>요즘 자주 마시게 되네요 ㅋㅋ<br/><br/>와인 1병에 9000원이라니 넘나 저렴한 거 아니오!!<br/>사이드 디쉬가격도 저렴쓰~~<br/>우리는 문어 포테이토 주문 했어요!<br/><br/>새로 생긴 지 얼마 안되서 내부는 깔꼼깔꼼<br/>개인적으로 벽에 액자가 있었음 더 예쁠 것 같아요~<br/>달달한걸로 추천 부탁드리니 건네주신 레알 꼼빠니아드비노스, 블랑코<br/>가격도 맛도 좋다 좋아<br/>',0,'2016년12월06일');


insert into SOCIAL values(SEQ_social_s_num.nextval,'user0007','후7.jpg',
'토크펍은 정말 술이 특이합니다 잔 이 특이하달까?<br/>정말 예쁘고 화려합니다<br/>술을 못먹는 저에게 정말 좋았고요 마치 여행온 기분이랄까 ㅎㅎㅎㅎ<br/>프랜차이즈가 아니라서 모든 음식이 수제로 만든다고 하시더라고요 <br/>술도 그렇고 음식까지 정말 최고 였씁니다!!!<br/>',0,'2016년12월07일');

insert into SOCIAL values(SEQ_social_s_num.nextval,'user0008','후8.jpg',
'725빌리지는 스포츠 좋아하시는 분들 정말 좋아하실꺼 같아요<br/>일 단 무지 넓습니다 스테이지에는 빔화면 에서 경기 볼수있구요<br/>마치 올림픽? 월드컵? 축구경기 보는 기분이랄까 ㅎㅎㅎㅎ<br/>완전 축제 입니다 ㅋㅋㅋ<br/>2002월드컵 보는 기분이었습니다 ㅋㅋ<br/><br/>다들 오셔서 경기 보시면서 취하는 것도 매우 좋을 것갔네요<br/>놀러들오세요!<br/>',0,'2016년12월01일');

insert into SOCIAL values(SEQ_social_s_num.nextval,'user0009','후9.jpg',
'부산 247 하면 모르는 분들이 없죠 다들 한번쯤 들어보셨을 듯합니다<br/>친구 생일 겸 부산 핫플레스로 유명한 247에 고고싱했어요.!!<br/>특히나 해운대핫플레이스로도 인기가 좋은 곳이기도 하고요 <br/>우리가 일부러 찾아간 부산핫플레이스 247은 사람들이 줄줄이 소세지 마냥 줄을<br/>서있더라고요... 다들 기념일이니 생일이니 해서 치구들이랑 연인들끼리 많이 놀러오셨더라구요<br/>은은한 조명도 있고 쨍쨍한 형광 컬러의 조명에다가 빵빵한 사운드까지 흥이 안날래야 안날수가<br/>없겠더라구요 다들 파티분위기가 물씬 나면서 장난아니게 재미있더라고요<br/>다들 연말이고 하닌깐 즐겁게 247에서 놀아봅시다 광란의 겨울밤을 보내면서!!~ㅎㅎ<br/>',0,'2016년12월02일');

insert into SOCIAL values(SEQ_social_s_num.nextval,'user0010','후10.png',
'평촌 술집 평촌 데이트장소로 알려진 제이와이 펍은 <br/>인스타에서도 평촌 분위기깡패술집으로 올라오더라구요<br/>그래서 더더 궁금했던!<br/>들어오니 맥주바와 다트가 눈에 확띄어요<br/>평일 저녁인데도 회식도 있고 데이트장소 답게 연인테이블도있고<br/>멀먹을지 고민하다가 세계맥주대회 20관왕맥주도 있고 <br/>고민하다 오트밀스타우드 화이트에일 수제맥주주문!!ㅎㅎ<br/>플래티넘 흑맥주는 무슨맛일지 수제맥주가 비쌀거라는 걱정은 노노<br/>병맥주보다도 가격이 착해요~<br/>맥주한잔하러 가기 좋은 곳 입니다 ~~<br/>',0,'2016년12월03일');



update social set s_upload='후10.png' where s_num=10



/////////////////////////////////////////////////////////////////////////////////////////////////
select * from r_social-- 소셜 댓글

insert into r_social values(10, SEQ_r_social_rs_num.nextval,'가봐야지ㅎㅎ','user0011');
insert into r_social values(10, SEQ_r_social_rs_num.nextval,'감사합니다ㅎ','user0012');
insert into r_social values(10, SEQ_r_social_rs_num.nextval,'멋지네요!~','user0013');


insert into r_social values(9, SEQ_r_social_rs_num.nextval,'좋네요','user0014');
insert into r_social values(9, SEQ_r_social_rs_num.nextval,'잘보고 가요','user0015');
insert into r_social values(9, SEQ_r_social_rs_num.nextval,'우 와 우와','user0011');


insert into r_social values(8, SEQ_r_social_rs_num.nextval,'멋지다 멋져','user0011');
insert into r_social values(8, SEQ_r_social_rs_num.nextval,'가까운데 좋네요','user0012');
insert into r_social values(8, SEQ_r_social_rs_num.nextval,'꼭 한번 가볼게요','user0013');
insert into r_social values(8, SEQ_r_social_rs_num.nextval,'ㅎㅎㅎㅎㅎㅎㅎ','user0014');


insert into r_social values(7, SEQ_r_social_rs_num.nextval,'ㅋㅋㅋㅋㅋㅋㅋ','user0012');
insert into r_social values(7, SEQ_r_social_rs_num.nextval,'파티 구합니다 ㅎ','user0013');
insert into r_social values(7, SEQ_r_social_rs_num.nextval,'환상 적이네요','user0014');


insert into r_social values(6, SEQ_r_social_rs_num.nextval,'오 지 구 연','user0015');
insert into r_social values(6, SEQ_r_social_rs_num.nextval,'지 리 구 연','user0012');
insert into r_social values(6, SEQ_r_social_rs_num.nextval,'핵 지리구연','user0011');
insert into r_social values(6, SEQ_r_social_rs_num.nextval,'핻핻 오지네요','user0013');


////////////////////이벤트  ///////////////////////////

select * from event
select * from reservation

insert into event values('administer',SEQ_event_e_num.nextval,'사랑하는 회원분들께 드리는 25%',
'본 쿠폰은 한 아이디 당 한번만 발급 하실수 있습니다.<br/><br/>The Pub 쿠폰 이벤트 실시 사용 기간 : <br/><br/>발급 받으신 후 (20일간) 사용 가능 합니다.<br/><br/>많은 참여 바랍니다. 본 쿠폰은 25% 할인 입니다. <br/><br/>사용 방법 : 발급 받기 > 마이페이지 확인 > 예약하기 > 쿠폰 적용 > 완료<br/>',0,'sale1.png','25이벤트','2016년12월05일');

insert into event values('administer',SEQ_event_e_num.nextval,'사랑하는 회원분들께 드리는 10%',
'본 쿠폰은 한 아이디 당 한번만 발급 하실수 있습니다.<br/><br/>The Pub 쿠폰 이벤트 실시 사용 기간 :<br/><br/>발급 받으신 후 (20일간) 사용 가능 합니다.<br/><br/>많은 참여 바랍니다. 본 쿠폰은 10% 할인 입니다.<br/><br/>사용 방법 : 발급 받기 > 마이페이지 확인 > 예약하기 > 쿠폰 적용 > 완료<br/>',0,'sale2.jpg','10이벤트','2016년12월05일');

insert into event values('administer',SEQ_event_e_num.nextval,'사랑하는 회원분들께 드리는 5%','
본 쿠폰은 한 아이디 당 한번만 발급 하실수 있습니다.<br/><br/>The Pub 쿠폰 이벤트 실시 사용 기간 :<br/><br/>발급 받으신 후 (20일간) 사용 가능 합니다.<br/><br/>많은 참여 바랍니다. 본 쿠폰은 5% 할인 입니다.<br/><br/>사용 방법 : 발급 받기 > 마이페이지 확인 > 예약하기 > 쿠폰 적용 > 완료<br/>',0,'sale3.jpg','5이벤트','2016년12월05일');




update EVENT set e_upload = 'sale1.png' where e_num=1;
update EVENT set e_upload = 'sale2.jpg' where e_num=2;
update EVENT set e_upload = 'sale3.jpg' where e_num=3;
sale2.jpg
sale3.jpg




select * from event


