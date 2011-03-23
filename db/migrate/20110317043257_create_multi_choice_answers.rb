class CreateMultiChoiceAnswers < ActiveRecord::Migration
  def self.up
    create_table :multi_choice_answers do |t|
      t.string :answer
      t.integer :question_id
      t.boolean :correct

      t.timestamps
    end
  end

  def self.down
    drop_table :multi_choice_answers
  end
end
