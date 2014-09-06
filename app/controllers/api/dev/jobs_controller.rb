class Api::Dev::JobsController < ApplicationController
  def index
    @search = Job.search params[:q]
    @search.sorts = 'published_at desc' if @search.sorts.empty?
    @jobs = @search.result.includes(:company).page(params[:page])
  end
end
