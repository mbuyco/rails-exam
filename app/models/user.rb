class User < ApplicationRecord
  enum user_type: [ :admin, :employer, :job_seeker ]
end
