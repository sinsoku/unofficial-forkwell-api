json.array! @jobs do |job|
  json.extract! job, :id, :title, :raw_description
  json.company do
    json.extract! job.company, :name, :screen_name
  end
end
