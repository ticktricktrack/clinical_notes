class ClinicalNotesController < ApplicationController
  def index
    @clinical_notes = ClinicalNote.all
  end

  def show
    @clinical_note = ClinicalNote.find(params[:id])
  end

  def new
    @clinical_note = ClinicalNoteAutism.new
    @clinical_note.answers = @clinical_note.grouped_answers_form
  end

  def create
    clinical_note_params = params.require(:clinical_note).permit(:clinical_note_type, :clinician, :patient, answers_attributes: [ :text, :number, :question ])
    # ap clinical_note_params
    @clinical_note = ClinicalNoteAutism.new(clinical_note_params)

    if @clinical_note.save
      redirect_to clinical_notes_path, notice: "Clinical note created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end
end
