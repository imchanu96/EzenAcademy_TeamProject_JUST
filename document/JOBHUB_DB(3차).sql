
/* Drop Tables */

--DROP TABLE BOARD_COMMENT CASCADE CONSTRAINTS;
--DROP TABLE VOTING CASCADE CONSTRAINTS;
--DROP TABLE BOARD CASCADE CONSTRAINTS;
--DROP TABLE MESSAGE CASCADE CONSTRAINTS;
--DROP TABLE RECOMMEND CASCADE CONSTRAINTS;
--DROP TABLE REVIEW CASCADE CONSTRAINTS;
--DROP TABLE COMPANY CASCADE CONSTRAINTS;
--DROP TABLE CONNECTION_MANAGEMENT CASCADE CONSTRAINTS;
--DROP TABLE IMAGE CASCADE CONSTRAINTS;
--DROP TABLE LETTER CASCADE CONSTRAINTS;
--DROP TABLE RESUME CASCADE CONSTRAINTS;
--DROP TABLE PERSONAL CASCADE CONSTRAINTS;




/* Create Tables */

-- 게시판
CREATE TABLE BOARD
(
	-- 게시판 번호
	BOARD_NUMBER number NOT NULL,
	-- 태그(게시물의 태그)
	BOARD_TAG varchar2(4000),
	-- 제목
	BOARD_TITLE varchar2(100),
	-- 작성자
	BOARD_WRITER varchar2(30),
	-- 내용
	BOARD_CONTENT varchar2(4000),
	-- 이미지
	BOARD_IMAGE varchar2(4000),
	-- 투표 유무(TRUE or FALSE)
	BOARD_VOTING_CHECK varchar2(10),
	-- 작성일
	BOARD_VOTING_CREATE_DATE date,
	-- 수정일
	BOARD_VOTING_MODIFY_DATE date,
	-- 게시글 추천수
	BOARD_LIKE_COUNT number,
	-- 회원번호
	PERSONAL_NUMBER number NOT NULL,
	PRIMARY KEY (BOARD_NUMBER)
);


-- 게시판 댓글
CREATE TABLE BOARD_COMMENT
(
	-- 댓글 번호
	BOARD_COMMENT_NUMBER number NOT NULL,
	-- 작성 내용
	BOARD_COMMENT_CONTENT varchar2(4000),
	-- 추천수
	BOARD_COMMENT_LIKE_COUNT number,
	-- 게시판 번호
	BOARD_NUMBER number NOT NULL,
	-- 회원번호
	PERSONAL_NUMBER number NOT NULL,
	PRIMARY KEY (BOARD_COMMENT_NUMBER)
);


-- 기업
CREATE TABLE COMPANY
(
	-- 기업번호
	COMPANY_NUMBER number NOT NULL,
	-- 기업명
	COMPANY_NAME varchar2(90),
	-- 기업주소
	COMPANY_ADDRESS varchar2(4000),
	-- 기업 업종
	COMPANY_TYPE varchar2(100),
	-- 기업 설립일
	COMPANY_ESTABLISH_DATE date,
	-- 기업 홈페이지
	COMPANY_HOMEPAGE varchar2(300),
	-- 기업 사업내용
	COMPANY_BUSINESS_DETAIL varchar2(4000),
	-- 기업 아이디(일단 보관)
	COMPANY_ID varchar2(30),
	-- 기업 비밀번호
	COMPANY_PASSWORD varchar2(30),
	-- 기업 사업자등록번호(아이디 대체)
	COMPANY_CODE varchar2(30),
	-- 기업 사업자등록증
	COMPANY_LICENSE varchar2(4000),
	-- 회사 로고
	COMPANY_LOGO varchar2(260),
	-- 기업 대표자명
	COMPANY_PRESIDENT_NAME varchar2(100),
	-- 기업_담당자 이름
	COMPANY_INCHARGE_NAME varchar2(100),
	-- 기업_담당자 이메일
	COMPANY_INCHARGE_EMAIL varchar2(30),
	-- 기업_담당자 연락처
	COMPANY_INCHARGE_PHONENUMBER varchar2(13),
	-- 기업 선호도(선호도 키워드1, 값 ...)
	COMPANY_PREFER varchar2(4000),
	-- 권한 레벨
	PERMISSION number(3),
	-- 접속 시간
	CONNECTION_TIME date,
	-- 접속 해제 시간
	DISCONNECTION_TIME date,
	PRIMARY KEY (COMPANY_NUMBER)
);


-- 접속 관련 데이터
CREATE TABLE CONNECTION_MANAGEMENT
(
	-- 접속시간
	CONNECTION_TIME date,
	-- 접속 해제 시간
	DISCONNECTION_TIME date,
	-- 접속자 번호
	CONNECTION_NUMBER varchar2(100),
	-- 접속자 아이디
	CONNECTION_ID varchar2(20)
);


-- 이미지
CREATE TABLE IMAGE
(
	-- 이미지 번호
	IMAGE_NUMBER number NOT NULL,
	-- 게시판 부모 번호
	IMAGE_PARENT_SEQ number,
	-- 이미지 파일 기존 이름
	IMAGE_ORIGINAL_NAME varchar2(260),
	-- 이미지 파일 저장 이름
	IMAGE_STORED_NAME varchar2(36),
	-- 이미지 크기
	IMAGE_FILE_SIZE number,
	-- 이미지 생성일
	IMAGINE_CREATE_DATE date,
	PRIMARY KEY (IMAGE_NUMBER)
);


-- 자기소개서
CREATE TABLE LETTER
(
	-- 자소서 번호
	LETTER_NUMBER number NOT NULL,
	-- 성장 배경
	LETTER_HISTORY varchar2(4000),
	-- 지원 동기
	LETTER_MOTIVATION varchar2(4000),
	-- 성격의 장단점
	LETTER_CHARACTER varchar2(4000),
	-- 입사 후 포부
	LETTER_GOAL varchar2(4000),
	-- 회원번호
	PERSONAL_NUMBER number NOT NULL,
	PRIMARY KEY (LETTER_NUMBER)
);


-- 메세지
CREATE TABLE MESSAGE
(
	-- 메세지 번호
	MESSAGE_NUMBER number NOT NULL,
	-- 메세지 방 번호
	MESSAGE_ROOM_NUMBER number,
	-- 메세지 보낸 시간
	MESSAGE_SEND_TIME date,
	-- 메세지 읽은 시간
	MESSAGE_READ_TIME date,
	-- 메세지 내용
	MESSAGE_CONTENT varchar2(4000),
	-- 메세지 읽은 여부
	MESSAGE_CHECK varchar2(100),
	-- 회원번호(메세지 보낸or받는 주체)
	PERSONAL_NUMBER number NOT NULL,
	-- 기업번호(메세지 보낸or받는 주체)
	COMPANY_NUMBER number NOT NULL,
	PRIMARY KEY (MESSAGE_NUMBER)
);


-- 회원
CREATE TABLE PERSONAL
(
	-- 회원번호
	PERSONAL_NUMBER number NOT NULL,
	-- 이름
	PERSONAL_NAME varchar2(100),
	-- 아이디
	PERSONAL_ID varchar2(20),
	-- 비밀번호
	PERSONAL_PASSWORD varchar2(30),
	-- 전화번호
	PERSONAL_PHONENUMBER varchar2(13),
	-- 회사명
	PERSONAL_COMPANY varchar2(90),
	-- 닉네임
	PERSONAL_NICKNAME varchar2(60),
	-- 회원 사진
	PERSONAL_PROFILE varchar2(260),
	-- 이메일(회사인증용)
	PERSONAL_EMAIL varchar2(30),
	-- 현 직장 입사일
	PERSONAL_HIRE_DATE date,
	-- 회원 선호 키워드
	PERSONAL_KEYWORD varchar2(100),
	-- 인증용 암호()
	PERSONAL_TEMPORARILY varchar2(100),
	-- 권한 레벨
	PERMISSION number(3),
	-- 접속 시간
	CONNECTION_TIME date,
	-- 접속 해제 시간
	DISCONNECTION_TIME date,
	PRIMARY KEY (PERSONAL_NUMBER)
);


-- 추천
CREATE TABLE RECOMMEND
(
	-- 기업 추천 번호
	RECOMMEND_NUMBER number NOT NULL,
	-- 추천 이유 키워드
	RECOMMEND_PREFER varchar2(4000),
	-- 회원번호
	PERSONAL_NUMBER number NOT NULL,
	-- 기업번호
	COMPANY_NUMBER number NOT NULL,
	-- 리뷰 번호
	REVIEW_NUMBER number NOT NULL,
	-- 추천 매칭률
	RECOMMEND_TOTAL_RATE number(3,2),
	-- 추천 결과(TRUE or FALSE)
	RECOMMEND_RESULT varchar2(10),
	PRIMARY KEY (RECOMMEND_NUMBER)
);


-- 이력서
CREATE TABLE RESUME
(
	-- 이력서 번호
	RESUME_NUMBER number NOT NULL,
	-- 이력서_이름
	RESUME_PERSONAL_NAME varchar2(100),
	-- 이력서_생년월일
	RESUME_PERSONAL_BIRTHDAY date,
	-- 이력서_이메일
	RESUME_PERSONAL_EMAIL varchar2(30),
	-- 이력서_연락처
	RESUME_PERSONAL_PHONENUMBER varchar2(13),
	-- 이력서_현주소
	RESUME_PERSONAL_ADDRESS varchar2(4000),
	-- 이력서_결혼 여부
	RESUME_PERSONAL_MARRY varchar2(10),
	-- 이력서_성별
	RESUME_PERSONAL_GENDER varchar2(9),
	-- 이력서_병역 여부
	RESUME_PERSONAL_MILITARY varchar2(9),
	-- 이력서_학력_입학년도
	RESUME_EDUCATION_BEGIN_DATE date,
	-- 이력서_학력_졸업년도
	RESUME_EDUCATION_END_DATE date,
	-- 이력서_학력_학교명
	RESUME_EDUCATION_NAME varchar2(60),
	-- 이력서_학력_전공
	RESUME_EDUCATION_MAJOR varchar2(60),
	-- 이력서_학력_소재지
	RESUME_EDUCATION_LOCATION varchar2(4000),
	-- 이력서_학력_학점(등급)/만점
	RESUME_EDUCATION_GRADE varchar2(10),
	-- 이력서_학력_졸업 구분
	RESUME_EDUCATION_GRADUATE varchar2(30),
	-- 이력서_경력사항_입사년도
	RESUME_CAREER_BEGIN_DATE date,
	-- 이력서_경력사항_퇴사년도
	RESUME_CAREER_END_DATE date,
	-- 이력서_경력사항_회사명
	RESUME_CAREER_NAME varchar2(90),
	-- 이력서_경력사항_직위
	RESUME_CAREER_POSITION varchar2(90),
	-- 이력서_경력사항_소재지
	RESUME_CAREER_LOCATION varchar2(4000),
	-- 이력서_경력사항_담당업무
	RESUME_CAREER_JOB varchar2(100),
	-- 이력서_자격증_취득일자
	RESUME_LICENSE_DATE date,
	-- 이력서_자격증_자격증명
	RESUME_LICENSE_NAME varchar2(100),
	-- 이력서_자격증_발급기관
	RESUME_LICENSE_INSTITUTION varchar2(90),
	-- 이력서_자격증_점수/등급
	RESUME_LICENSE_GRADE varchar2(100),
	-- 회원번호
	PERSONAL_NUMBER number NOT NULL,
	PRIMARY KEY (RESUME_NUMBER)
);


-- 기업 리뷰
CREATE TABLE REVIEW
(
	-- 리뷰 번호
	REVIEW_NUMBER number NOT NULL,
	-- 리뷰 제목
	REVIEW_TITLE varchar2(4000),
	-- 리뷰 내용
	REVIEW_CONTENT varchar2(4000),
	-- 별점_급여 및 복지
	REVIEW_SALARY_WELFARE number(1,1),
	-- 별점_근무환경
	REVIEW_ENVIRONMENT number(1,1),
	-- 별점_경영진
	REVIEW_BOSS number(1,1),
	-- 별점_워라벨
	REVIEW_BALANCE number(1,1),
	-- 좋은점
	REVIEW_GOOD_CONTENT varchar2(4000),
	-- 나쁜점
	REVIEW_BAD_CONTENT varchar2(4000),
	-- 리뷰_별점 평균
	REVIEW_AVERAGE number(2,2),
	-- 회원번호
	PERSONAL_NUMBER number NOT NULL,
	-- 기업번호
	COMPANY_NUMBER number NOT NULL,
	PRIMARY KEY (REVIEW_NUMBER)
);


-- 투표
CREATE TABLE VOTING
(
	-- 투표 번호
	VOTING_NUMBER number NOT NULL,
	-- 투표 항목
	VOTING_ITEM varchar2(4000),
	-- 투표 항목_투표수
	VOTING_ITEM_COUNT varchar2(100),
	-- 게시판 번호
	BOARD_NUMBER number NOT NULL,
	PRIMARY KEY (VOTING_NUMBER)
);



/* Create Foreign Keys */

ALTER TABLE BOARD_COMMENT
	ADD FOREIGN KEY (BOARD_NUMBER)
	REFERENCES BOARD (BOARD_NUMBER)
;


ALTER TABLE VOTING
	ADD FOREIGN KEY (BOARD_NUMBER)
	REFERENCES BOARD (BOARD_NUMBER)
;


ALTER TABLE MESSAGE
	ADD FOREIGN KEY (COMPANY_NUMBER)
	REFERENCES COMPANY (COMPANY_NUMBER)
;


ALTER TABLE RECOMMEND
	ADD FOREIGN KEY (COMPANY_NUMBER)
	REFERENCES COMPANY (COMPANY_NUMBER)
;


ALTER TABLE REVIEW
	ADD FOREIGN KEY (COMPANY_NUMBER)
	REFERENCES COMPANY (COMPANY_NUMBER)
;


ALTER TABLE BOARD
	ADD FOREIGN KEY (PERSONAL_NUMBER)
	REFERENCES PERSONAL (PERSONAL_NUMBER)
;


ALTER TABLE BOARD_COMMENT
	ADD FOREIGN KEY (PERSONAL_NUMBER)
	REFERENCES PERSONAL (PERSONAL_NUMBER)
;


ALTER TABLE LETTER
	ADD FOREIGN KEY (PERSONAL_NUMBER)
	REFERENCES PERSONAL (PERSONAL_NUMBER)
;


ALTER TABLE MESSAGE
	ADD FOREIGN KEY (PERSONAL_NUMBER)
	REFERENCES PERSONAL (PERSONAL_NUMBER)
;


ALTER TABLE RECOMMEND
	ADD FOREIGN KEY (PERSONAL_NUMBER)
	REFERENCES PERSONAL (PERSONAL_NUMBER)
;


ALTER TABLE RESUME
	ADD FOREIGN KEY (PERSONAL_NUMBER)
	REFERENCES PERSONAL (PERSONAL_NUMBER)
;


ALTER TABLE REVIEW
	ADD FOREIGN KEY (PERSONAL_NUMBER)
	REFERENCES PERSONAL (PERSONAL_NUMBER)
;


ALTER TABLE RECOMMEND
	ADD FOREIGN KEY (REVIEW_NUMBER)
	REFERENCES REVIEW (REVIEW_NUMBER)
;



/* Comments */

COMMENT ON TABLE BOARD IS '게시판';
COMMENT ON COLUMN BOARD.BOARD_NUMBER IS '게시판 번호';
COMMENT ON COLUMN BOARD.BOARD_TAG IS '태그(게시물의 태그)';
COMMENT ON COLUMN BOARD.BOARD_TITLE IS '제목';
COMMENT ON COLUMN BOARD.BOARD_WRITER IS '작성자';
COMMENT ON COLUMN BOARD.BOARD_CONTENT IS '내용';
COMMENT ON COLUMN BOARD.BOARD_IMAGE IS '이미지';
COMMENT ON COLUMN BOARD.BOARD_VOTING_CHECK IS '투표 유무(TRUE or FALSE)';
COMMENT ON COLUMN BOARD.BOARD_VOTING_CREATE_DATE IS '작성일';
COMMENT ON COLUMN BOARD.BOARD_VOTING_MODIFY_DATE IS '수정일';
COMMENT ON COLUMN BOARD.BOARD_LIKE_COUNT IS '게시글 추천수';
COMMENT ON COLUMN BOARD.PERSONAL_NUMBER IS '회원번호';
COMMENT ON TABLE BOARD_COMMENT IS '게시판 댓글';
COMMENT ON COLUMN BOARD_COMMENT.BOARD_COMMENT_NUMBER IS '댓글 번호';
COMMENT ON COLUMN BOARD_COMMENT.BOARD_COMMENT_CONTENT IS '작성 내용';
COMMENT ON COLUMN BOARD_COMMENT.BOARD_COMMENT_LIKE_COUNT IS '추천수';
COMMENT ON COLUMN BOARD_COMMENT.BOARD_NUMBER IS '게시판 번호';
COMMENT ON COLUMN BOARD_COMMENT.PERSONAL_NUMBER IS '회원번호';
COMMENT ON TABLE COMPANY IS '기업';
COMMENT ON COLUMN COMPANY.COMPANY_NUMBER IS '기업번호';
COMMENT ON COLUMN COMPANY.COMPANY_NAME IS '기업명';
COMMENT ON COLUMN COMPANY.COMPANY_ADDRESS IS '기업주소';
COMMENT ON COLUMN COMPANY.COMPANY_TYPE IS '기업 업종';
COMMENT ON COLUMN COMPANY.COMPANY_ESTABLISH_DATE IS '기업 설립일';
COMMENT ON COLUMN COMPANY.COMPANY_HOMEPAGE IS '기업 홈페이지';
COMMENT ON COLUMN COMPANY.COMPANY_BUSINESS_DETAIL IS '기업 사업내용';
COMMENT ON COLUMN COMPANY.COMPANY_ID IS '기업 아이디(일단 보관)';
COMMENT ON COLUMN COMPANY.COMPANY_PASSWORD IS '기업 비밀번호';
COMMENT ON COLUMN COMPANY.COMPANY_CODE IS '기업 사업자등록번호(아이디 대체)';
COMMENT ON COLUMN COMPANY.COMPANY_LICENSE IS '기업 사업자등록증';
COMMENT ON COLUMN COMPANY.COMPANY_LOGO IS '회사 로고';
COMMENT ON COLUMN COMPANY.COMPANY_PRESIDENT_NAME IS '기업 대표자명';
COMMENT ON COLUMN COMPANY.COMPANY_INCHARGE_NAME IS '기업_담당자 이름';
COMMENT ON COLUMN COMPANY.COMPANY_INCHARGE_EMAIL IS '기업_담당자 이메일';
COMMENT ON COLUMN COMPANY.COMPANY_INCHARGE_PHONENUMBER IS '기업_담당자 연락처';
COMMENT ON COLUMN COMPANY.COMPANY_PREFER IS '기업 선호도(선호도 키워드1, 값 ...)';
COMMENT ON COLUMN COMPANY.PERMISSION IS '권한 레벨';
COMMENT ON COLUMN COMPANY.CONNECTION_TIME IS '접속 시간';
COMMENT ON COLUMN COMPANY.DISCONNECTION_TIME IS '접속 해제 시간';
COMMENT ON TABLE CONNECTION_MANAGEMENT IS '접속 관련 데이터';
COMMENT ON COLUMN CONNECTION_MANAGEMENT.CONNECTION_TIME IS '접속시간';
COMMENT ON COLUMN CONNECTION_MANAGEMENT.DISCONNECTION_TIME IS '접속 해제 시간';
COMMENT ON COLUMN CONNECTION_MANAGEMENT.CONNECTION_NUMBER IS '접속자 번호';
COMMENT ON COLUMN CONNECTION_MANAGEMENT.CONNECTION_ID IS '접속자 아이디';
COMMENT ON TABLE IMAGE IS '이미지';
COMMENT ON COLUMN IMAGE.IMAGE_NUMBER IS '이미지 번호';
COMMENT ON COLUMN IMAGE.IMAGE_PARENT_SEQ IS '게시판 부모 번호';
COMMENT ON COLUMN IMAGE.IMAGE_ORIGINAL_NAME IS '이미지 파일 기존 이름';
COMMENT ON COLUMN IMAGE.IMAGE_STORED_NAME IS '이미지 파일 저장 이름';
COMMENT ON COLUMN IMAGE.IMAGE_FILE_SIZE IS '이미지 크기';
COMMENT ON COLUMN IMAGE.IMAGINE_CREATE_DATE IS '이미지 생성일';
COMMENT ON TABLE LETTER IS '자기소개서';
COMMENT ON COLUMN LETTER.LETTER_NUMBER IS '자소서 번호';
COMMENT ON COLUMN LETTER.LETTER_HISTORY IS '성장 배경';
COMMENT ON COLUMN LETTER.LETTER_MOTIVATION IS '지원 동기';
COMMENT ON COLUMN LETTER.LETTER_CHARACTER IS '성격의 장단점';
COMMENT ON COLUMN LETTER.LETTER_GOAL IS '입사 후 포부';
COMMENT ON COLUMN LETTER.PERSONAL_NUMBER IS '회원번호';
COMMENT ON TABLE MESSAGE IS '메세지';
COMMENT ON COLUMN MESSAGE.MESSAGE_NUMBER IS '메세지 번호';
COMMENT ON COLUMN MESSAGE.MESSAGE_ROOM_NUMBER IS '메세지 방 번호';
COMMENT ON COLUMN MESSAGE.MESSAGE_SEND_TIME IS '메세지 보낸 시간';
COMMENT ON COLUMN MESSAGE.MESSAGE_READ_TIME IS '메세지 읽은 시간';
COMMENT ON COLUMN MESSAGE.MESSAGE_CONTENT IS '메세지 내용';
COMMENT ON COLUMN MESSAGE.MESSAGE_CHECK IS '메세지 읽은 여부';
COMMENT ON COLUMN MESSAGE.PERSONAL_NUMBER IS '회원번호(메세지 보낸or받는 주체)';
COMMENT ON COLUMN MESSAGE.COMPANY_NUMBER IS '기업번호(메세지 보낸or받는 주체)';
COMMENT ON TABLE PERSONAL IS '회원';
COMMENT ON COLUMN PERSONAL.PERSONAL_NUMBER IS '회원번호';
COMMENT ON COLUMN PERSONAL.PERSONAL_NAME IS '이름';
COMMENT ON COLUMN PERSONAL.PERSONAL_ID IS '아이디';
COMMENT ON COLUMN PERSONAL.PERSONAL_PASSWORD IS '비밀번호';
COMMENT ON COLUMN PERSONAL.PERSONAL_PHONENUMBER IS '전화번호';
COMMENT ON COLUMN PERSONAL.PERSONAL_COMPANY IS '회사명';
COMMENT ON COLUMN PERSONAL.PERSONAL_NICKNAME IS '닉네임';
COMMENT ON COLUMN PERSONAL.PERSONAL_PROFILE IS '회원 사진';
COMMENT ON COLUMN PERSONAL.PERSONAL_EMAIL IS '이메일(회사인증용)';
COMMENT ON COLUMN PERSONAL.PERSONAL_HIRE_DATE IS '현 직장 입사일';
COMMENT ON COLUMN PERSONAL.PERSONAL_KEYWORD IS '회원 선호 키워드';
COMMENT ON COLUMN PERSONAL.PERSONAL_TEMPORARILY IS '인증용 암호()';
COMMENT ON COLUMN PERSONAL.PERMISSION IS '권한 레벨';
COMMENT ON COLUMN PERSONAL.CONNECTION_TIME IS '접속 시간';
COMMENT ON COLUMN PERSONAL.DISCONNECTION_TIME IS '접속 해제 시간';
COMMENT ON TABLE RECOMMEND IS '추천';
COMMENT ON COLUMN RECOMMEND.RECOMMEND_NUMBER IS '기업 추천 번호';
COMMENT ON COLUMN RECOMMEND.RECOMMEND_PREFER IS '추천 이유 키워드';
COMMENT ON COLUMN RECOMMEND.PERSONAL_NUMBER IS '회원번호';
COMMENT ON COLUMN RECOMMEND.COMPANY_NUMBER IS '기업번호';
COMMENT ON COLUMN RECOMMEND.REVIEW_NUMBER IS '리뷰 번호';
COMMENT ON COLUMN RECOMMEND.RECOMMEND_TOTAL_RATE IS '추천 매칭률';
COMMENT ON COLUMN RECOMMEND.RECOMMEND_RESULT IS '추천 결과(TRUE or FALSE)';
COMMENT ON TABLE RESUME IS '이력서';
COMMENT ON COLUMN RESUME.RESUME_NUMBER IS '이력서 번호';
COMMENT ON COLUMN RESUME.RESUME_PERSONAL_NAME IS '이력서_이름';
COMMENT ON COLUMN RESUME.RESUME_PERSONAL_BIRTHDAY IS '이력서_생년월일';
COMMENT ON COLUMN RESUME.RESUME_PERSONAL_EMAIL IS '이력서_이메일';
COMMENT ON COLUMN RESUME.RESUME_PERSONAL_PHONENUMBER IS '이력서_연락처';
COMMENT ON COLUMN RESUME.RESUME_PERSONAL_ADDRESS IS '이력서_현주소';
COMMENT ON COLUMN RESUME.RESUME_PERSONAL_MARRY IS '이력서_결혼 여부';
COMMENT ON COLUMN RESUME.RESUME_PERSONAL_GENDER IS '이력서_성별';
COMMENT ON COLUMN RESUME.RESUME_PERSONAL_MILITARY IS '이력서_병역 여부';
COMMENT ON COLUMN RESUME.RESUME_EDUCATION_BEGIN_DATE IS '이력서_학력_입학년도';
COMMENT ON COLUMN RESUME.RESUME_EDUCATION_END_DATE IS '이력서_학력_졸업년도';
COMMENT ON COLUMN RESUME.RESUME_EDUCATION_NAME IS '이력서_학력_학교명';
COMMENT ON COLUMN RESUME.RESUME_EDUCATION_MAJOR IS '이력서_학력_전공';
COMMENT ON COLUMN RESUME.RESUME_EDUCATION_LOCATION IS '이력서_학력_소재지';
COMMENT ON COLUMN RESUME.RESUME_EDUCATION_GRADE IS '이력서_학력_학점(등급)/만점';
COMMENT ON COLUMN RESUME.RESUME_EDUCATION_GRADUATE IS '이력서_학력_졸업 구분';
COMMENT ON COLUMN RESUME.RESUME_CAREER_BEGIN_DATE IS '이력서_경력사항_입사년도';
COMMENT ON COLUMN RESUME.RESUME_CAREER_END_DATE IS '이력서_경력사항_퇴사년도';
COMMENT ON COLUMN RESUME.RESUME_CAREER_NAME IS '이력서_경력사항_회사명';
COMMENT ON COLUMN RESUME.RESUME_CAREER_POSITION IS '이력서_경력사항_직위';
COMMENT ON COLUMN RESUME.RESUME_CAREER_LOCATION IS '이력서_경력사항_소재지';
COMMENT ON COLUMN RESUME.RESUME_CAREER_JOB IS '이력서_경력사항_담당업무';
COMMENT ON COLUMN RESUME.RESUME_LICENSE_DATE IS '이력서_자격증_취득일자';
COMMENT ON COLUMN RESUME.RESUME_LICENSE_NAME IS '이력서_자격증_자격증명';
COMMENT ON COLUMN RESUME.RESUME_LICENSE_INSTITUTION IS '이력서_자격증_발급기관';
COMMENT ON COLUMN RESUME.RESUME_LICENSE_GRADE IS '이력서_자격증_점수/등급';
COMMENT ON COLUMN RESUME.PERSONAL_NUMBER IS '회원번호';
COMMENT ON TABLE REVIEW IS '기업 리뷰';
COMMENT ON COLUMN REVIEW.REVIEW_NUMBER IS '리뷰 번호';
COMMENT ON COLUMN REVIEW.REVIEW_TITLE IS '리뷰 제목';
COMMENT ON COLUMN REVIEW.REVIEW_CONTENT IS '리뷰 내용';
COMMENT ON COLUMN REVIEW.REVIEW_SALARY_WELFARE IS '별점_급여 및 복지';
COMMENT ON COLUMN REVIEW.REVIEW_ENVIRONMENT IS '별점_근무환경';
COMMENT ON COLUMN REVIEW.REVIEW_BOSS IS '별점_경영진';
COMMENT ON COLUMN REVIEW.REVIEW_BALANCE IS '별점_워라벨';
COMMENT ON COLUMN REVIEW.REVIEW_GOOD_CONTENT IS '좋은점';
COMMENT ON COLUMN REVIEW.REVIEW_BAD_CONTENT IS '나쁜점';
COMMENT ON COLUMN REVIEW.REVIEW_AVERAGE IS '리뷰_별점 평균';
COMMENT ON COLUMN REVIEW.PERSONAL_NUMBER IS '회원번호';
COMMENT ON COLUMN REVIEW.COMPANY_NUMBER IS '기업번호';
COMMENT ON TABLE VOTING IS '투표';
COMMENT ON COLUMN VOTING.VOTING_NUMBER IS '투표 번호';
COMMENT ON COLUMN VOTING.VOTING_ITEM IS '투표 항목';
COMMENT ON COLUMN VOTING.VOTING_ITEM_COUNT IS '투표 항목_투표수';
COMMENT ON COLUMN VOTING.BOARD_NUMBER IS '게시판 번호';



