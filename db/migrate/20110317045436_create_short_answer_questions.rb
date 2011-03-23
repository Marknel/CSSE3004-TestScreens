class CreateShortAnswerQuestions < ActiveRecord::Migration
  def self.up
    create_table :short_answer_questions do |t|
      t.string :question
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :short_answer_questions
  end
end
