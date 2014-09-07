require 'rails_helper'

describe 'Jobs API' do
  let(:json) { JSON.parse response.body }

  before :all do
    grooves = create :company, name: '株式会社grooves', screen_name: 'grooves'
    create :job, company: grooves, published_at: '2014-09-07'

    heroku = create :company, name: 'Heroku', screen_name: 'heroku'
    create :job, company: heroku, published_at: '2014-09-06'
  end

  context 'get all jobs' do
    before { get '/api/dev/jobs' }

    it { expect(json.size).to eq 2 }

    describe 'job keys' do
      it { expect(json[0].keys).to eq ['id', 'title', 'raw_description', 'company'] }
    end

    describe 'company keys' do
      it { expect(json[0]['company'].keys).to eq ['name', 'screen_name'] }
    end
  end

  context 'search params exists' do
    before { get '/api/dev/jobs', q: {company_name_cont: 'grooves'} }
    it { expect(json.size).to eq 1 }
  end
end
