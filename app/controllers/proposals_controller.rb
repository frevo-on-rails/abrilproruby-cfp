class ProposalsController < ApplicationController

  def index
    redirect_to new_proposal_path
  end

  def new
    @proposal = Proposal.new
  end

  def create
    @proposal = Proposal.new(proposal_attributes)
    if @proposal.save
      ProposalsMailer.confirmation_email(@proposal).deliver!
      render :create
    else
      render :new
    end
  end

  def show
    @proposal = Proposal.where(uuid: params[:id]).first
    redirect_to new_proposal_path unless @proposal
  end

private

  def proposal_attributes
    params.require(:proposal).permit(:name, :title, :bio, :residence,
      :email, :talk_title, :talk_description, :needs_travel_assistance)
  end

end
