class DocsController < ApplicationController
  def show
    if doc_exist?
      render params[:id]
    else
      raise ActionController::RoutingError.new 'Not Found'
    end
  end

  private
  def doc_exist?
    path = Rails.root.join('app/views/docs', "#{params[:id]}*")
    Dir.glob(path).present?
  end
end
