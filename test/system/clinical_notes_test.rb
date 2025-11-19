require "application_system_test_case"

class ClinicalNotesTest < ApplicationSystemTestCase
  test "add a new clinical note" do
    visit new_clinical_note_path
    fill_in "clinical_note_patient", with: "John Doe"
    fill_in "clinical_note_clinician", with: "Dr. Smith"
    fill_in "clinical_note_answers_attributes_0_text", with: "The client demonstrated some social use of speech in response to caregiver"
    fill_in "clinical_note_answers_attributes_1_text", with: "Occasional reciprocal conversation"
    fill_in "clinical_note_answers_attributes_2_text", with: "Some pretend play, including actions directed to dolls or cars etc., but limited in variety or frequency"
    fill_in "clinical_note_answers_attributes_3_text", with: "Uses physical space to communicate."
    fill_in "clinical_note_answers_attributes_4_text", with: "Rarely or never points to express interest in objects or events"

    sleep 5
    click_on "Create Clinical Note"
    sleep 5
    click_on "View"
    sleep 5
    assert_text "John Doe"
    assert_text "Dr. Smith"

    assert_text "A1 Deficits in social-emotional reciprocity"
    assert_text "Social verbalization/chat"
    assert_text "The client demonstrated some social use of speech in response to caregiver"
    assert_text "Reciprocal conversation"
    assert_text "Occasional reciprocal conversation"
    assert_text "Imaginative social play"
    assert_text "Some pretend play, including actions directed to dolls or cars"

    assert_text "A2 Deficits in nonverbal communicative behaviors used for social interaction"
    assert_text "Use of other's body to communicate"
    assert_text "Uses physical space to communicate."
    assert_text "Pointing to express interest"
    assert_text "Rarely or never points to express interest in objects or events"
  end
end
