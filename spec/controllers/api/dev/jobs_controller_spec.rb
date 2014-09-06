require 'rails_helper'

RSpec.describe Api::Dev::JobsController, type: :controller do
  include_context 'json_request'

  describe '#index' do
    before { get :index }
    it { expect(response).to have_http_status 200 }
  end
end
