require 'rails_helper'

RSpec.describe Api::Dev::EntriesController, type: :controller do
  include_context 'json_request'

  before { allow_any_instance_of(EntryRequest).to receive(:post_entry) }

  let(:valid_attributes) do
    {entry: attributes_for(:entry_request)}
  end

  let(:invalid_attributes) do
    {entry: {username: 'invalid'}}
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
