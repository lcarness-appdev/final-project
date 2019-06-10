class NotesController < ApplicationController
  def list
    @notes = Note.all

    render("note_templates/list.html.erb")
  end

  def details
    @note = Note.where({ :id => params.fetch("id_to_display") }).first

    render("note_templates/details.html.erb")
  end

  def blank_form
    @note = Note.new

    render("note_templates/blank_form.html.erb")
  end

  def save_new_info
    @note = Note.new

    @note.notes = params.fetch("notes")
    @note.inputs_id = params.fetch("inputs_id")

    if @note.valid?
      @note.save

      redirect_to("/notes", { :notice => "Note created successfully." })
    else
      render("note_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @note = Note.where({ :id => params.fetch("id_to_prefill") }).first

    render("note_templates/prefilled_form.html.erb")
  end

  def save_edits
    @note = Note.where({ :id => params.fetch("id_to_modify") }).first

    @note.notes = params.fetch("notes")
    @note.inputs_id = params.fetch("inputs_id")

    if @note.valid?
      @note.save

      redirect_to("/notes/" + @note.id.to_s, { :notice => "Note updated successfully." })
    else
      render("note_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @note = Note.where({ :id => params.fetch("id_to_remove") }).first

    @note.destroy

    redirect_to("/notes", { :notice => "Note deleted successfully." })
  end
end
