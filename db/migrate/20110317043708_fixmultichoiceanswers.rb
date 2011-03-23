class Fixmultichoiceanswers < ActiveRecord::Migration
  def self.up
     remove_column :multi_choice_answers, :question_id
     add_column :multi_choice_answers, :multi_choice_question_id, :integer
  end

  def self.down
    remove_column :multi_choice_answers, :multi_choice_question_id
    add_column :multi_choice_answers, :question_id, :integer
  end
end
