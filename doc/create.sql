CREATE TABLE USERS (
  ID                          NUMBER(38)    NOT NULL,
  EMAIL                       VARCHAR2(255) NOT NULL,
  ENCRYPTED_PASSWORD          VARCHAR2(128) NOT NULL,
  PASSWORD_SALT               VARCHAR2(255) NOT NULL,
  RESET_PASSWORD_TOKEN        VARCHAR2(255),
  REMEMBER_TOKEN              VARCHAR2(255),
  REMEMBER_CREATED_AT         DATE,
  SIGN_IN_COUNT               NUMBER(38),
  CURRENT_SIGN_IN_AT          DATE,
  LAST_SIGN_IN_AT             DATE,
  CURRENT_SIGN_IN_IP          VARCHAR2(255),
  LAST_SIGN_IN_IP             VARCHAR2(255),
  CREATED_AT                  DATE,
  UPDATED_AT                  DATE,
  CONSTRAINT USERS_pk PRIMARY KEY (ID)
);
  
CREATE TABLE MULTI_CHOICE_ANSWERS (
  ID                          NUMBER(38)    NOT NULL,
  ANSWER                      VARCHAR2(255),
  CORRECT                     NUMBER(1),
  CREATED_AT                  DATE,
  UPDATED_AT                  DATE,
  MULTI_CHOICE_QUESTION_ID    NUMBER(38)
  CONSTRAINT MULTI_CHOICE_ANSWERS_pk PRIMARY KEY (ID)
);

CREATE TABLE MULTI_CHOICE_QUESTIONS (
  ID                          NUMBER(38)    NOT NULL,
  QUESTION                    VARCHAR2(255),
  USER_ID                     NUMBER(38),
  CREATED_AT                  DATE,
  UPDATED_AT                  DATE,
  CONSTRAINT MULTI_CHOICE_QUESTIONS_pk PRIMARY KEY (ID)
);
  
  
CREATE TABLE SHORT_ANSWER_QUESTIONS (
  ID                          NUMBER(38)    NOT NULL,
  QUESTION                    VARCHAR2(255),
  USER_ID                     NUMBER(38),
  CREATED_AT                  DATE,
  UPDATED_AT                  DATE,
  CONSTRAINT SHORT_ANSEWR_QUESTIONS_pk PRIMARY KEY (ID)
);

CREATE TABLE SHORT_ANSWER_KEYWORDS (
  ID                          NUMBER(38)    NOT NULL,
  KEYWORD                      VARCHAR2(255),
  CREATED_AT                  DATE,
  UPDATED_AT                  DATE,
  SHORT_ANSWER_QUESTION_ID    NUMBER(38)
  CONSTRAINT SHORT_ANSWER_KEYWORDS_pk PRIMARY KEY (ID)
);
