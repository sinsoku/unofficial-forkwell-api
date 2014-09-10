module ApplicationHelper
  def link_to_forkwell(html_options = nil)
    link_to 'Forkwell', 'https://forkwell.com/', html_options
  end

  def link_to_forkwell_jobs(html_options = nil)
    link_to 'Forkwell Jobs', 'https://jobs.forkwell.com/', html_options
  end

  def link_to_api_doc(name, options, html_options = nil)
    link_to name, ['docs', 'api', *options].join('/'), html_options
  end
end
