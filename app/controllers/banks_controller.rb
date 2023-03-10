class BanksController < ApplicationController
  def index
    matching_banks = Bank.all

    @list_of_banks = matching_banks.order({ :created_at => :desc })

    render({ :template => "banks_templates/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_banks = Bank.where({ :id => the_id })

    @the_bank = matching_banks.at(0)

    render({ :template => "banks_templates/show.html.erb" })
  end

  def create
    the_bank = Bank.new
    the_bank.type = params.fetch("query_type")
    the_bank.size = params.fetch("query_size")
    the_bank.location = params.fetch("query_location")
    the_bank.name = params.fetch("query_name")
    the_bank.specialty = params.fetch("query_specialty")

    if the_bank.valid?
      the_bank.save
      redirect_to("/banks", { :notice => "Bank created successfully." })
    else
      redirect_to("/banks", { :alert => the_bank.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_bank = Bank.where({ :id => the_id }).at(0)

    the_bank.type = params.fetch("query_type")
    the_bank.size = params.fetch("query_size")
    the_bank.location = params.fetch("query_location")
    the_bank.name = params.fetch("query_name")
    the_bank.specialty = params.fetch("query_specialty")

    if the_bank.valid?
      the_bank.save
      redirect_to("/banks/#{the_bank.id}", { :notice => "Bank updated successfully."} )
    else
      redirect_to("/banks/#{the_bank.id}", { :alert => the_bank.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_bank = Bank.where({ :id => the_id }).at(0)

    the_bank.destroy

    redirect_to("/banks", { :notice => "Bank deleted successfully."} )
  end
end
