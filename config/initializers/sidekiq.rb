Rails.application.configure do
  config.active_job.queue_adapter = :sidekiq
end

require 'sidekiq/fetch'
Sidekiq::BasicFetch::TIMEOUT = 15
