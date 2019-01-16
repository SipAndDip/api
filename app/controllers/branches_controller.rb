class BranchesController < ApplicationController
  before_action :set_branch, only: %i(show update delete)

  def index
    branches = Branch.all
    json_response(branches.to_a)
  end

  def show
    json_response(@branch)
  end

  def create
    branch = Branch.create!(branch_params)
    json_response(branch)
  end

  def update
    @branch.update_attributes!(branch_params)
    json_response(@branch)
  end

  def destroy
    @branch.destroy!
    head :no_content
  end

  private

  def branch_params
    params.require(:branch).permit(
      :name,
      :phone_number,
      :email,
      :facebook_page,
      :address
    )
  end

  def set_branch
    # TODO: Add filtering here depending on access
    @branch = Branch.find(params[:id])
  end
end
