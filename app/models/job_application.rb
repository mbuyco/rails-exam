class JobApplication < ApplicationRecord
  belongs_to :job_id
  belongs_to :job_seeker_id
  enum status: [ :in_progress, :pass, :fail ]
end
