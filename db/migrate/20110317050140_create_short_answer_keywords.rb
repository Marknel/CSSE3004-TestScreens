class CreateShortAnswerKeywords < ActiveRecord::Migration
  def self.up
    create_table :short_answer_keywords do |t|
      t.string :keyword
      t.integer :short_answer_question_id

      t.timestamps
    end
  end

  def self.down
    drop_table :short_answer_keywords
  end
end
