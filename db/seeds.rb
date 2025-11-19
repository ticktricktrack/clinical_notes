# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

clinical_note1 = ClinicalNote.create(
  type: "ClinicalNoteAutism",
  clinician: "Dr. Smith",
  patient: "Patient A"
)
clinical_note1.answers.find_or_create_by!(number: 1, question: "Social verbalization/chat", text: "The client demonstrated some social use of speech in response to caregiver")
clinical_note1.answers.find_or_create_by!(number: 2, question: "Reciprocal conversation", text: "Occasional reciprocal conversation, but less frequent than normal or limited in flexibility and topics")
clinical_note1.answers.find_or_create_by!(number: 3, question: "Imaginative social play", text: "Patient A Some pretend play, including actions directed to dolls or cars etc., but limited in variety or frequency")
clinical_note1.answers.find_or_create_by!(number: 4, question: "Use of other's body to communicate", text: "uses physical space to communicate. The use of another's body to communicate is known as
non-verbal communication, which includes physical behaviors like facial expressions, posture, gestures, and eye contact. This form of communication conveys a wide range of information about feelings and attitudes, often subconsciously. While some elements like basic facial expressions have universal meanings, most body language is interpreted based on cultural context.")
clinical_note1.answers.find_or_create_by!(number: 5, question: "Pointing to express interest", text: "Rarely or never points to express interest in objects or events")

clinical_note2 = ClinicalNote.create(
  type: "ClinicalNoteAutism",
  clinician: "Dr. Smith",
  patient: "Patient B"
)
clinical_note2.answers.find_or_create_by!(number: 1, question: "Social verbalization/chat", text: "The client demonstrated some social use of speech in response to caregiver")
clinical_note2.answers.find_or_create_by!(number: 2, question: "Reciprocal conversation", text: "Occasional reciprocal conversation, but less frequent than normal or limited in flexibility and topics")
clinical_note2.answers.find_or_create_by!(number: 3, question: "Imaginative social play", text: "Patient A Some pretend play, including actions directed to dolls or cars etc., but limited in variety or frequency. The use of another's body to communicate is known as
non-verbal communication, which includes physical behaviors like facial expressions, posture, gestures, and eye contact. This form of communication conveys a wide range of information about feelings and attitudes, often subconsciously. While some elements like basic facial expressions have universal meanings, most body language is interpreted based on cultural context.")
clinical_note2.answers.find_or_create_by!(number: 4, question: "Use of other's body to communicate", text: "uses physical space to communicate. ")
clinical_note2.answers.find_or_create_by!(number: 5, question: "Pointing to express interest", text: "Rarely or never points to express interest in objects or events")
