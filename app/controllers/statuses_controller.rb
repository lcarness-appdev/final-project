class StatusesController < ApplicationController
  def list
    @statuses = Status.all

    render("status_templates/list.html.erb")
  end

  def details
    @status = Status.where({ :id => params.fetch("id_to_display") }).first

    render("status_templates/details.html.erb")
  end

  def blank_form
    @status = Status.new

    render("status_templates/blank_form.html.erb")
  end

  def save_new_info
    @status = Status.new

    @status.area_of_interest = params.fetch("area_of_interest")
    @status.status = params.fetch("status")
    @status.action_plan = params.fetch("action_plan")

    if @status.valid?
      @status.save

      redirect_to("/statuses", { :notice => "Status created successfully." })
    else
      render("status_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @status = Status.where({ :id => params.fetch("id_to_prefill") }).first

    render("status_templates/prefilled_form.html.erb")
  end

  def save_edits
    @status = Status.where({ :id => params.fetch("id_to_modify") }).first

    @status.area_of_interest = params.fetch("area_of_interest")
    @status.status = params.fetch("status")
    @status.action_plan = params.fetch("action_plan")

    if @status.valid?
      @status.save

      redirect_to("/statuses/" + @status.id.to_s, { :notice => "Status updated successfully." })
    else
      render("status_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @status = Status.where({ :id => params.fetch("id_to_remove") }).first

    @status.destroy

    redirect_to("/statuses", { :notice => "Status deleted successfully." })
  end
end
