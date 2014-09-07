module Authorizable
  extend ActiveSupport::Concern

  included do
    attr_accessor :type, :username, :password
    validates :type, presence: true, inclusion: ['twitter']
    validates :username, presence: true
    validates :password, presence: true
  end

  FORKWELL_JOBS_URL = 'https://jobs.forkwell.com'

  def agent
    @agent ||= Mechanize.new
  end

  def login
    return true if login?

    twitter_login_page = agent.get "#{FORKWELL_JOBS_URL}/auth/twitter"
    form = twitter_login_page.forms[0]
    form['session[username_or_email]'] = username
    form['session[password]'] = password
    twitter_app_auth = agent.submit(form)
    twitter_app_auth.links[0].click
    @login = true
  end

  def login?
    @login == true
  end
end
