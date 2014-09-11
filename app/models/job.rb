class Job < ActiveRecord::Base
  belongs_to :company

  validates :company_id, presence: true
  validates :title, presence: true
  validates :raw_description, presence: true
  validates :published_at, presence: true
  validates :min_salary, numericality: {greater_than: 0}
end
