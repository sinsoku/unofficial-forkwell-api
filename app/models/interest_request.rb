class InterestRequest
  include ActiveModel::Model
  include Authorizable

  attr_accessor :job_id
  validates :job_id, presence: true

  def job
    @job ||= Job.find job_id
  end

  def save
    return false if invalid?
    login
    response = post_interest
    true
    # TODO
    # Interest.create! JSON.parse(response.body)
  end

  def post_interest
    job_page = agent.get "#{FORKWELL_JOBS_URL}/#{job.company.screen_name}/jobs/#{job_id}"
    form = job_page.form_with action: "/jobs/#{job_id}/interests"
    agent.submit(form)
  end
end
