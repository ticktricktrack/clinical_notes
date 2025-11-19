class CreateAnswers < ActiveRecord::Migration[8.1]
  def change
    create_table :answers do |t|
      t.integer :clinical_note_id
      t.integer :number
      t.string :question
      t.text :text

      t.timestamps
    end
  end
end
