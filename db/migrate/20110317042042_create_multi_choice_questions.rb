class CreateMultiChoiceQuestions < ActiveRecord::Migration
  def self.up
    create_table :multi_choice_questions do |t|
      t.string :question
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :multi_choice_questions
  end
end
