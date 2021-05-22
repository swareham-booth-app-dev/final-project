class OffersController < ApplicationController
  def index
    matching_offers = Offer.all

    @list_of_offers = matching_offers.order({ :created_at => :desc })

    render({ :template => "offers/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_offers = Offer.where({ :id => the_id })

    @the_offer = matching_offers.at(0)

    render({ :template => "offers/show.html.erb" })
  end

  def create
    the_offer = Offer.new
    the_offer.date_received = params.fetch("query_date_received")
    the_offer.response_due_date = params.fetch("query_response_due_date")
    the_offer.annual_salary = params.fetch("query_annual_salary")
    the_offer.signing_bonus = params.fetch("query_signing_bonus")
    the_offer.start_date = params.fetch("query_start_date")
    the_offer.end_date = params.fetch("query_end_date")

    if the_offer.valid?
      the_offer.save
      redirect_to("/offers", { :notice => "Offer created successfully." })
    else
      redirect_to("/offers", { :notice => "Offer failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_offer = Offer.where({ :id => the_id }).at(0)

    the_offer.date_received = params.fetch("query_date_received")
    the_offer.response_due_date = params.fetch("query_response_due_date")
    the_offer.annual_salary = params.fetch("query_annual_salary")
    the_offer.signing_bonus = params.fetch("query_signing_bonus")
    the_offer.start_date = params.fetch("query_start_date")
    the_offer.end_date = params.fetch("query_end_date")

    if the_offer.valid?
      the_offer.save
      redirect_to("/offers/#{the_offer.id}", { :notice => "Offer updated successfully."} )
    else
      redirect_to("/offers/#{the_offer.id}", { :alert => "Offer failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_offer = Offer.where({ :id => the_id }).at(0)

    the_offer.destroy

    redirect_to("/offers", { :notice => "Offer deleted successfully."} )
  end
end
