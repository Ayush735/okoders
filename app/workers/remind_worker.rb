class RemindWorker
  include Sidekiq::Worker

  def perform()
    TvShow.where(start_time)
  end
  # RemindWorker.perform_async()
end