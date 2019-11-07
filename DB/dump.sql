/*
Created: 2019-05-02
Modified: 2019-09-18
Model: MySQL 5.7
Database: MySQL 5.7
*/

-- Create tables section -------------------------------------------------

-- Table member

CREATE TABLE member
(
  id Varchar(15) NOT NULL,
  pw Varchar(150) NOT NULL,
  name Varchar(8) NOT NULL,
  birthday Varchar(13),
  phone Varchar(13) NOT NULL,
  email Varchar(25),
  sex Varchar(2) NOT NULL,
  zipNo Varchar(6) NOT NULL,
  roadAddr Varchar(120) NOT NULL,
  jibunAddr Varchar(120) NOT NULL,
  realAddr Varchar(100) NOT NULL,
  joinData Timestamp NOT NULL,
  profile Varchar(50)
)
;

ALTER TABLE member ADD PRIMARY KEY (id)
;

-- Table career

CREATE TABLE career
(
  ca_no Int NOT NULL AUTO_INCREMENT,
  ca_title Varchar(25) NOT NULL,
  ca_subTitle Varchar(25),
  ca_selfText Varchar(200),
  ca_talk Varchar(100),
  ca_job Varchar(12) NOT NULL,
  ca_zipNo Varchar(6),
  ca_roadAddr Varchar(120),
  ca_jibunAddr Varchar(120),
  ca_realAddr Varchar(100),
  ca_workTerm Varchar(22),
  ca_workDay Varchar(15),
  ca_workTime Varchar(30),
  ca_date Timestamp NULL,
  ca_sal Varchar(20),
  ca_acadamiBg Varchar(15),
  ca_startPublic Varchar(15),
  ca_endPublic Varchar(15),
  ca_publicTerm Varchar(10),
  ca_phone Varchar(13),
  ca_addPhone Varchar(25),
  ca_private Int(2),
  workFormNo Int,
  id Varchar(15),
  ca_schoolName Varchar(20),
  ca_attendTerm Varchar(16),
  ca_credit Varchar(4),
  ca_certificateKind Varchar(20),
  ca_grade Varchar(2),
  ca_obtainDate Varchar(12),
  ca_publisher Varchar(20),
  PRIMARY KEY (ca_no)
)
;

CREATE INDEX IX_Relationship5 ON career (workFormNo)
;

CREATE INDEX IX_Relationship7 ON career (id)
;

-- Table work

CREATE TABLE work
(
  workFormNo Int NOT NULL AUTO_INCREMENT,
  workName Varchar(8),
  PRIMARY KEY (workFormNo)
)
;

-- Table enMember

CREATE TABLE enMember
(
  en_no Int NOT NULL AUTO_INCREMENT,
  en_id Varchar(15) NOT NULL,
  en_pw Varchar(150) NOT NULL,
  en_name Varchar(8) NOT NULL,
  en_phone Varchar(13) NOT NULL,
  en_Email Varchar(25),
  en_sex Varchar(2) NOT NULL,
  en_joinData Timestamp NOT NULL,
  en_confirmNum Int NOT NULL DEFAULT 0,
  en_img Varchar(50) NOT NULL,
  un_uniqueCodeFk Varchar(50) NOT NULL,
  PRIMARY KEY (en_no)
)
;

CREATE INDEX IX_Relationship6 ON enMember (un_uniqueCodeFk)
;

-- Table uniques

CREATE TABLE uniques
(
  uni_uniqueCodeNo Varchar(50) NOT NULL,
  uni_uniqueName Varchar(50) NOT NULL,
  uni_confirmNum Int NOT NULL DEFAULT 0,
  uni_img Varchar(50) NOT NULL
)
;

ALTER TABLE uniques ADD PRIMARY KEY (uni_uniqueCodeNo)
;

-- Table notice

CREATE TABLE notice
(
  n_no Int NOT NULL AUTO_INCREMENT,
  n_title Varchar(25) NOT NULL,
  n_date Timestamp NULL,
  n_img Varchar(50) NOT NULL,
  n_comName Varchar(20),
  n_ceoName Varchar(8),
  n_address Varchar(100),
  n_job Varchar(12),
  n_reCruit Int,
  n_field Varchar(20),
  n_gender Varchar(4),
  n_age Varchar(14),
  n_acadamiBg Varchar(15),
  n_endDate Varchar(15),
  n_sal Varchar(20),
  n_workTerm Varchar(22),
  n_workDay Varchar(15),
  n_workTime Varchar(30),
  n_workForm Varchar(10),
  n_name Varchar(8),
  n_email Varchar(20),
  n_phone Varchar(13),
  n_supportForm Varchar(12),
  n_bigo Varchar(20),
  n_content Text NOT NULL,
  en_no Int,
  PRIMARY KEY (n_no)
)
;

CREATE INDEX IX_Relationship14 ON notice (en_no)
;

-- Table management

CREATE TABLE management
(
  m_no Int NOT NULL AUTO_INCREMENT,
  m_id Varchar(15),
  ca_no Int,
  n_no Int,
  PRIMARY KEY (m_no)
)
;

CREATE INDEX IX_Relationship9 ON management (ca_no)
;

CREATE INDEX IX_Relationship32 ON management (n_no)
;

-- Table portfolio

CREATE TABLE portfolio
(
  po_no Int NOT NULL AUTO_INCREMENT,
  po_id Varchar(15) NOT NULL,
  po_title Text NOT NULL,
  po_reTitle Text,
  po_subTitle Varchar(25),
  po_layout Varchar(5) NOT NULL,
  po_content Text NOT NULL,
  po_date Timestamp NOT NULL,
  po_public Varchar(2) NOT NULL DEFAULT 'N',
  po_img Varchar(50),
  PRIMARY KEY (po_no)
)
;

-- Table hire

CREATE TABLE hire
(
  hi_no Int NOT NULL AUTO_INCREMENT,
  hi_confirmNum Varchar(4) NOT NULL,
  m_no Int,
  PRIMARY KEY (hi_no)
)
;

CREATE INDEX IX_Relationship12 ON hire (m_no)
;

-- Table Job

CREATE TABLE Job
(
  jo_no Int NOT NULL AUTO_INCREMENT,
  jo_bigCate Varchar(20) NOT NULL,
  jo_regularCate Varchar(30) NOT NULL,
  po_no Int,
  PRIMARY KEY (jo_no)
)
;

CREATE INDEX IX_Relationship18 ON Job (po_no)
;

-- Table cp_Include

CREATE TABLE cp_Include
(
  p_noFk Int NOT NULL AUTO_INCREMENT,
  ca_no Int,
  po_no Int,
  PRIMARY KEY (p_noFk)
)
;

CREATE INDEX IX_Relationship29 ON cp_Include (ca_no)
;

CREATE INDEX IX_Relationship30 ON cp_Include (po_no)
;

-- Table cardBoard

CREATE TABLE cardBoard
(
  no Int NOT NULL AUTO_INCREMENT,
  card_contentNo Int,
  card_content Text,
  po_noFk Int,
  PRIMARY KEY (no)
)
;

-- Table announcement

CREATE TABLE announcement
(
  a_no Int NOT NULL AUTO_INCREMENT,
  a_id Varchar(15) NOT NULL,
  a_title Varchar(25) NOT NULL,
  a_content Text,
  a_date Timestamp NULL,
  a_img Varchar(50),
  PRIMARY KEY (a_no)
)
;

-- Table question

CREATE TABLE question
(
  q_no Int NOT NULL AUTO_INCREMENT,
  q_title Varchar(25) NOT NULL,
  q_content Text,
  q_date Timestamp,
  PRIMARY KEY (q_no)
)
;

-- Table careerFile

CREATE TABLE careerFile
(
  fileNo Int NOT NULL AUTO_INCREMENT,
  fileName Varchar(50),
  fileDate Timestamp,
  fileType Varchar(10),
  ca_no Int,
  PRIMARY KEY (fileNo)
)
;

CREATE INDEX IX_Relationship34 ON careerFile (ca_no)
;

-- Table board

CREATE TABLE board
(
  board_no Int NOT NULL AUTO_INCREMENT,
  board_id Varchar(15),
  board_title Varchar(25) NOT NULL,
  board_content Text NOT NULL,
  board_img Varchar(50),
  board_date Timestamp,
  board_reply Text,
  PRIMARY KEY (board_no)
)
;

-- Create foreign keys (relationships) section -------------------------------------------------

ALTER TABLE career ADD CONSTRAINT Relationship5 FOREIGN KEY (workFormNo) REFERENCES work (workFormNo) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE enMember ADD CONSTRAINT Relationship6 FOREIGN KEY (un_uniqueCodeFk) REFERENCES uniques (uni_uniqueCodeNo) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE career ADD CONSTRAINT Relationship7 FOREIGN KEY (id) REFERENCES member (id) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE management ADD CONSTRAINT Relationship9 FOREIGN KEY (ca_no) REFERENCES career (ca_no) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE hire ADD CONSTRAINT Relationship12 FOREIGN KEY (m_no) REFERENCES management (m_no) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE notice ADD CONSTRAINT Relationship14 FOREIGN KEY (en_no) REFERENCES enMember (en_no) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE Job ADD CONSTRAINT Relationship18 FOREIGN KEY (po_no) REFERENCES portfolio (po_no) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE cp_Include ADD CONSTRAINT Relationship29 FOREIGN KEY (ca_no) REFERENCES career (ca_no) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE cp_Include ADD CONSTRAINT Relationship30 FOREIGN KEY (po_no) REFERENCES portfolio (po_no) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE management ADD CONSTRAINT Relationship32 FOREIGN KEY (n_no) REFERENCES notice (n_no) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE careerFile ADD CONSTRAINT Relationship34 FOREIGN KEY (ca_no) REFERENCES career (ca_no) ON DELETE RESTRICT ON UPDATE RESTRICT
;


