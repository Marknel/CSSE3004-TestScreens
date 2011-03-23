class MultiChoiceAnswer < ActiveRecord::Base
  belongs_to :multi_choice_question

  def MultiChoiceAnswer.count_for_question(multi_choice_question)
    MultiChoiceAnswer.count_by_sql ["SELECT COUNT(*) FROM multi_choice_answers WHERE multi_choice_question_id = ?", multi_choice_question]
  end

end
