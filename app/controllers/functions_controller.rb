class FunctionsController < ApplicationController
  def index
    matching_functions = Function.all

    @list_of_functions = matching_functions.order({ :created_at => :desc })

    render({ :template => "functions/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_functions = Function.where({ :id => the_id })

    @the_function = matching_functions.at(0)

    render({ :template => "functions/show.html.erb" })
  end

  def create
    the_function = Function.new
    the_function.name = params.fetch("query_name")
    the_function.applications_count = params.fetch("query_applications_count")

    if the_function.valid?
      the_function.save
      redirect_to("/functions", { :notice => "Function created successfully." })
    else
      redirect_to("/functions", { :notice => "Function failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_function = Function.where({ :id => the_id }).at(0)

    the_function.name = params.fetch("query_name")
    the_function.applications_count = params.fetch("query_applications_count")

    if the_function.valid?
      the_function.save
      redirect_to("/functions/#{the_function.id}", { :notice => "Function updated successfully."} )
    else
      redirect_to("/functions/#{the_function.id}", { :alert => "Function failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_function = Function.where({ :id => the_id }).at(0)

    the_function.destroy

    redirect_to("/functions", { :notice => "Function deleted successfully."} )
  end
end
