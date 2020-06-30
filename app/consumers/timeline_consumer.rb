class TimelineConsumer
  include Hutch::Consumer
  consume 'twitter.parsed_timeline_received'
  queue_name 'twitter'

  def process(message)
    TwitterTimelineMailer.tweets_email(message['email'],
                                       [message['start_date'], message['end_date']].join(' / '),
                                       message['data']).deliver_now
  end
end
