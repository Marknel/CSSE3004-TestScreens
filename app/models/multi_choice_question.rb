class MultiChoiceQuestion < ActiveRecord::Base
  belongs_to :user
  
  has_many :answers, :class_name => 'MultiChoiceAnswer'
  
  
  def <=> other
    self.created_at <=> other.created_at
  end
  
  def to_s
    question
  end
end
