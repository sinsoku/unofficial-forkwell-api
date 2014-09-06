class Job < ActiveRecord::Base
  belongs_to :company

  validates :company_id, presence: true
  validates :title, presence: true
  validates :raw_description, presence: true
  validates :published_at, presence: true
end
