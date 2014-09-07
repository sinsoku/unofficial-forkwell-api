class Api::Dev::InterestsController < ApplicationController
  def create
    @interest = InterestRequest.new interest_params
    if @interest.save
      render :show, status: :ok
    else
      render json: @interest.errors, status: :unprocessable_entity
    end
  end

  private
  def interest_params
    params.require(:interest).permit(:type, :username, :password, :job_id)
  end
end
