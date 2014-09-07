class Api::Dev::EntriesController < ApplicationController
  def create
    @entry = EntryRequest.new entry_params
    if @entry.save
      render :show, status: :ok
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  private
  def entry_params
    params.require(:entry).permit(:type, :username, :password, :job_id, :intendment, :salary)
  end
end
