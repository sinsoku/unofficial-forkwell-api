RSpec.shared_context 'json_request' do
  before { request.env["HTTP_ACCEPT"] = 'application/json' }
end
