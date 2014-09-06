namespace :app do
  desc 'Scrape jobs from Forkwell Jobs'
  task scrape_jobs: :environment do
    JobScraper.new.run
  end

  task 'scrape_jobs:all' => :environment do
    JobScraper.new.run_all
  end
end
