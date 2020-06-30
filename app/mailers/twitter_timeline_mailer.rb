class TwitterTimelineMailer < ApplicationMailer
  def tweets_email(to, date_range, tweets)
    @tweets = tweets
    mail(to: to, subject: "Tweets for #{date_range}")
  end
end
