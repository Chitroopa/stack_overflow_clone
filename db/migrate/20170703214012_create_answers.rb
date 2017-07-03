class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
      add_column :questions, :user_id, :integer
    create_table :answers do |t|
      t.string :answer
      t.integer :user_id
      t.integer :question_id
      
      t.timestamps
    end
  end
end
