# Perform real actions in background
class ActionWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
  end
end
