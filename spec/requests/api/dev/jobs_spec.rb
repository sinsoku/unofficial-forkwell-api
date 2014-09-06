require 'rails_helper'

describe 'Jobs API' do
  let(:json) { JSON.parse response.body }

  before :all do
    @company = create :company, name: '株式会社grooves', screen_name: 'grooves'
    @job = create :job, company: @company
  end
  before { get '/api/dev/jobs' }

  describe 'job keys' do
    it { expect(json[0].keys).to eq ['id', 'title', 'raw_description', 'company'] }
  end

  describe 'company keys' do
    it { expect(json[0]['company'].keys).to eq ['name', 'screen_name'] }
  end
end
