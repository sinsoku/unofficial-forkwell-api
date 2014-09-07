require 'rails_helper'

RSpec.describe Api::Dev::InterestsController, type: :controller do
  include_context 'json_request'

  before { allow_any_instance_of(InterestRequest).to receive(:post_interest) }

  let(:valid_attributes) do
    {interest: attributes_for(:interest_request)}
  end

  let(:invalid_attributes) do
    {interest: {username: 'invalid'}}
  end

  describe '#create' do
    context 'valid attributes' do
      before { post :create, valid_attributes }
      it { expect(response).to have_http_status 200 }
    end

    context 'invalid attributes' do
      before { post :create, invalid_attributes }
      it { expect(response).to have_http_status 422 }
    end
  end
end
