class LocationsController < ApplicationController
  def index
    matching_locations = Location.all

    @list_of_locations = matching_locations.order({ :created_at => :desc })

    render({ :template => "locations/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_locations = Location.where({ :id => the_id })

    @the_location = matching_locations.at(0)

    render({ :template => "locations/show.html.erb" })
  end

  def create
    the_location = Location.new
    the_location.city = params.fetch("query_city")
    the_location.state = params.fetch("query_state")
    the_location.country = params.fetch("query_country")
    the_location.applications_count = params.fetch("query_applications_count")

    if the_location.valid?
      the_location.save
      redirect_to("/locations", { :notice => "Location created successfully." })
    else
      redirect_to("/locations", { :notice => "Location failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_location = Location.where({ :id => the_id }).at(0)

    the_location.city = params.fetch("query_city")
    the_location.state = params.fetch("query_state")
    the_location.country = params.fetch("query_country")
    the_location.applications_count = params.fetch("query_applications_count")

    if the_location.valid?
      the_location.save
      redirect_to("/locations/#{the_location.id}", { :notice => "Location updated successfully."} )
    else
      redirect_to("/locations/#{the_location.id}", { :alert => "Location failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_location = Location.where({ :id => the_id }).at(0)

    the_location.destroy

    redirect_to("/locations", { :notice => "Location deleted successfully."} )
  end
end
