class CreateClinicalNotes < ActiveRecord::Migration[8.1]
  def change
    create_table :clinical_notes do |t|
      t.string :type
      t.string :clinician
      t.string :patient

      t.timestamps
    end
  end
end
