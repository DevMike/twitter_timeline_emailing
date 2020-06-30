require 'rails_helper'

describe TimelineConsumer do
  describe '#process' do
    let(:message) do
      {
        'start_date' => '1-06-2020',
        'end_date' => '30-06-2020',
        'email' => 'zarechenskiy.mihail@gmail.com',
        'data' => []
      }
    end

    subject { described_class.new.process(message) }

    before { allow(TwitterTimelineMailer).to receive_message_chain(:tweets_email, :deliver_now) }

    it 'calls mailer with expected attributes' do
      expect(TwitterTimelineMailer).to receive(:tweets_email).with(
        message['email'],
        [message['start_date'], message['end_date']].join(' / '),
        message['data'])

      subject
    end
  end
end