class EntryRequest
  include ActiveModel::Model
  include Authorizable

  attr_accessor :job_id, :intendment, :salary
  validates :job_id, presence: true
  validates :intendment, presence: true, inclusion: %w(join_soon will_join talk_only)
  validates :salary, numericality: {only_integer: true, greater_than_or_equal_to: 1}

  def save
    return false if invalid?
    login
    response = post_entry
    true
    # TODO
    # Entry.create! JSON.parse(response.body)
  end

  def post_entry
    entry_page = agent.get "#{FORKWELL_JOBS_URL}/jobs/#{job_id}/entries/new"
    form = entry_page.form_with action: "/jobs/#{job_id}/entries"
    form.radiobutton_with(value: intendment).check
    form['applikation[salary_request]'] = salary if salary.present?
    form.checkbox_with(name: 'applikation[agreement]').check
    agent.submit(form)
  end
end
