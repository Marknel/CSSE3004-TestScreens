-- *****************************************************************************
-- ***** Script populate tables with test data
-- ***** Author: Mark Cracknell
-- ***** Student: 41723562
-- *****************************************************************************

-- Add Users
INSERT INTO users (ID, EMAIL, ENCRYPTED_PASSWORD, PASSWORD_SALT,
  RESET_PASSWORD_TOKEN, SIGN_IN_COUNT, CREATED_AT, UPDATED_AT) VALUES
(1, 'marknel@kondoot.com', 'qteijjlsjzozotkjekkjhaijaijri287nja-2j98ahf48',
  '17y32j9ijtaj49u9io2ojkjeokfokglkmrgj4tij48u308u9jt', '1yhe6743h40k8j', 2,
  '25-MAR-11', '26-MAR-11');

INSERT INTO users (ID, EMAIL, ENCRYPTED_PASSWORD, PASSWORD_SALT,
  RESET_PASSWORD_TOKEN, SIGN_IN_COUNT, CREATED_AT, UPDATED_AT) VALUES
(2, 'racer--01@hotmail.com', 'aijri287nja-2j98ahf48454648fdsaifsj29293hnf',
  'kgfslkmr4g4jg4gatgitjt44358ug3wgg0q8guh9jjkuu2fvst', '8585sij387kj0a', 5,
  '20-MAR-11', '24-MAR-11');


-- Add Multi Choice Answers
INSERT INTO multi_choice_answers (ID, ANSWER, CORRECT, CREATED_AT, UPDATED_AT,
  MULTI_CHOICE_QUESTION_ID) VALUES
(1, 'blue', 1, '25-MAR-11', '25-MAR-11', 1);
INSERT INTO multi_choice_answers (ID, ANSWER, CORRECT, CREATED_AT, UPDATED_AT,
  MULTI_CHOICE_QUESTION_ID) VALUES
(2, 'green', 0, '25-MAR-11', '25-MAR-11', 1);
INSERT INTO multi_choice_answers (ID, ANSWER, CORRECT, CREATED_AT, UPDATED_AT,
  MULTI_CHOICE_QUESTION_ID) VALUES
(3, 'orange', 0, '25-MAR-11', '25-MAR-11', 1);
INSERT INTO multi_choice_answers (ID, ANSWER, CORRECT, CREATED_AT, UPDATED_AT,
  MULTI_CHOICE_QUESTION_ID) VALUES
(4, 'yellow', 0, '25-MAR-11', '25-MAR-11', 1);
INSERT INTO multi_choice_answers (ID, ANSWER, CORRECT, CREATED_AT, UPDATED_AT,
  MULTI_CHOICE_QUESTION_ID) VALUES
(5, 'black', 0, '25-MAR-11', '25-MAR-11', 1);
INSERT INTO multi_choice_answers (ID, ANSWER, CORRECT, CREATED_AT, UPDATED_AT,
  MULTI_CHOICE_QUESTION_ID) VALUES
(6, 'purple', 0, '25-MAR-11', '25-MAR-11', 1);
INSERT INTO multi_choice_answers (ID, ANSWER, CORRECT, CREATED_AT, UPDATED_AT,
  MULTI_CHOICE_QUESTION_ID) VALUES
(7, 'red', 0, '25-MAR-11', '25-MAR-11', 1);
INSERT INTO multi_choice_answers (ID, ANSWER, CORRECT, CREATED_AT, UPDATED_AT,
  MULTI_CHOICE_QUESTION_ID) VALUES
(8, 'pink', 0, '25-MAR-11', '25-MAR-11', 1);
INSERT INTO multi_choice_answers (ID, ANSWER, CORRECT, CREATED_AT, UPDATED_AT,
  MULTI_CHOICE_QUESTION_ID) VALUES
(9, 'grey', 0, '25-MAR-11', '25-MAR-11', 1);
INSERT INTO multi_choice_answers (ID, ANSWER, CORRECT, CREATED_AT, UPDATED_AT,
  MULTI_CHOICE_QUESTION_ID) VALUES
(10, 'white', 0, '25-MAR-11', '25-MAR-11', 1);
INSERT INTO multi_choice_answers (ID, ANSWER, CORRECT, CREATED_AT, UPDATED_AT,
  MULTI_CHOICE_QUESTION_ID) VALUES
(11, 'Corolla', 1, '25-MAR-11', '25-MAR-11', 2);



-- Create multiple choice questions
INSERT INTO multi_choice_questions (ID, QUESTION, USER_ID, CREATED_AT,
  UPDATED_AT) VALUES
(1, 'What is my eye colour?', 1, '25-MAR-11', '25-MAR-11');
INSERT INTO multi_choice_questions (ID, QUESTION, USER_ID, CREATED_AT,
  UPDATED_AT) VALUES
(2, 'What is the model of my car?', 1, '25-MAR-11', '25-MAR-11');


-- Create Short answer questions
INSERT INTO short_answer_questions (ID, QUESTION, USER_ID, CREATED_AT,
  UPDATED_AT) VALUES
(1, 'How were your holidays?', 1, '20-MAR-11', '20-MAR-11');
INSERT INTO short_answer_questions (ID, QUESTION, USER_ID, CREATED_AT,
  UPDATED_AT) VALUES
(2, 'What are you doing this weekend?', 1, '25-MAR-11', '25-MAR-11');


-- Create short answer keywords
INSERT INTO short_answer_keywords (ID, KEYWORD, CREATED_AT, UPDATED_AT,
  SHORT_ANSWER_QUESTION_ID) VALUES
(1, 'great', '25-MAR-11', '25-MAR-11', 1);
INSERT INTO short_answer_keywords (ID, KEYWORD, CREATED_AT, UPDATED_AT,
  SHORT_ANSWER_QUESTION_ID) VALUES
(2, 'amazing', '25-MAR-11', '25-MAR-11', 1);
INSERT INTO short_answer_keywords (ID, KEYWORD, CREATED_AT, UPDATED_AT,
  SHORT_ANSWER_QUESTION_ID) VALUES
(3, 'stupendous', '25-MAR-11', '25-MAR-11', 1);
INSERT INTO short_answer_keywords (ID, KEYWORD, CREATED_AT, UPDATED_AT,
  SHORT_ANSWER_QUESTION_ID) VALUES
(4, 'swimming', '25-MAR-11', '25-MAR-11', 2);