class DocsController < ApplicationController
  def show
    if doc_exist?
      render doc_path
    else
      raise ActionController::RoutingError.new 'Not Found'
    end
  end

  private
  def doc_exist?
    path = Rails.root.join('app/views', doc_path + '*' )
    Dir.glob(path).present?
  end

  def doc_path
    "docs/#{params[:id]}"
  end
end
