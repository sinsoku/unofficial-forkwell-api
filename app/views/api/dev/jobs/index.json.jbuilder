json.array! @jobs do |job|
  json.extract! job, :id, :title, :raw_description, :address, :min_salary, :max_salary
  json.company do
    json.extract! job.company, :name, :screen_name
  end
end
