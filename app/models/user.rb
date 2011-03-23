class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  has_many :multi_choice_questions
  has_many :short_answer_questions
  
  
  def questions_between_dates (from, to)
    multi_choice_questions = self.multi_choice_questions.where("created_at > ? and created_at < ?", from, to)
    short_answer_questions = self.short_answer_questions.where("created_at > ? and created_at < ?", from, to)
    
    (multi_choice_questions + short_answer_questions).flatten.sort
  end
  
end
