class JobScraper
  BASE_URL = 'https://jobs.forkwell.com'

  attr_reader :agent

  def initialize
    @agent = Mechanize.new
  end

  def run(page = 1)
    puts "scraping jobs: #{page}"

    page = agent.get "#{BASE_URL}/jobs?order=3&page=#{page}"
    job_links = page.search('.jobs-list-title a').map { |e| e[:href] }
    ActiveRecord::Base.transaction do
      jobs = job_links.map { |url| find_job url }
      Job.where(id: jobs.map(&:id)).delete_all
      Job.import jobs
    end
  end

  def run_all
    page = agent.get "#{BASE_URL}/jobs"
    total_num = page.search('.search-left-count .num').text
    last_page = (total_num.to_f / 15).ceil
    (1..last_page).each { |num| run num }
  end

  def find_job(url)
    page = agent.get "#{BASE_URL}#{url}"

    name = page.search('.jobs-title-sub a').text
    screen_name = url.split('/')[1]
    company = Company.find_or_create_by! name: name, screen_name: screen_name
    Job.new company: company,
      id: url.split('/')[-1],
      title: page.search('.jobs-header-content span[itemprop="title"]').text,
      raw_description: page.search('.jobs-body-inner').text,
      published_at: page.search('.jobs-header-info .num').text
  end
end
