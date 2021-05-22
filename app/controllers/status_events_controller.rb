class StatusEventsController < ApplicationController
  def index
    matching_status_events = StatusEvent.all

    @list_of_status_events = matching_status_events.order({ :created_at => :desc })

    render({ :template => "status_events/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_status_events = StatusEvent.where({ :id => the_id })

    @the_status_event = matching_status_events.at(0)

    render({ :template => "status_events/show.html.erb" })
  end

  def create
    the_status_event = StatusEvent.new
    the_status_event.event_type = params.fetch("query_event_type")
    the_status_event.date = params.fetch("query_date")
    the_status_event.application_id = params.fetch("query_application_id")

    if the_status_event.valid?
      the_status_event.save
      redirect_to("/status_events", { :notice => "Status event created successfully." })
    else
      redirect_to("/status_events", { :notice => "Status event failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_status_event = StatusEvent.where({ :id => the_id }).at(0)

    the_status_event.event_type = params.fetch("query_event_type")
    the_status_event.date = params.fetch("query_date")
    the_status_event.application_id = params.fetch("query_application_id")

    if the_status_event.valid?
      the_status_event.save
      redirect_to("/status_events/#{the_status_event.id}", { :notice => "Status event updated successfully."} )
    else
      redirect_to("/status_events/#{the_status_event.id}", { :alert => "Status event failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_status_event = StatusEvent.where({ :id => the_id }).at(0)

    the_status_event.destroy

    redirect_to("/status_events", { :notice => "Status event deleted successfully."} )
  end
end
