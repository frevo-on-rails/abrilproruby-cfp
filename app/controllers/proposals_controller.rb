class ProposalsController < ApplicationController

  def index
    redirect_to new_proposal_path
  end

  def new
    @proposal = Proposal.new
  end

  def create
  end

  def show

  end

end
