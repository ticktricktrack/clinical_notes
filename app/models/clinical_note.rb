class ClinicalNote < ApplicationRecord
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers

  attribute :clinical_note_type, :string
  attribute :clinician, :string
  attribute :patient, :string
end
