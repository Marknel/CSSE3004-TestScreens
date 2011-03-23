class ShortAnswerQuestion < ActiveRecord::Base
  has_many :short_answer_keywords
  
  
  def to_s
    question
  end
end
