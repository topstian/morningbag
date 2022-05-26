# Main job helper
module JobHelper
  include Sidekiq::Worker

  # Default Sidekiq options, override on specific jobs
  sidekiq_options queue: 'default', retry: 5
end
