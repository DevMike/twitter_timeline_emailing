require 'rails_helper'

describe TwitterTimelineMailer do
  describe '.tweets_email' do
    let(:to) { 'zarechenskiy.mihail@gmail.com' }
    let(:date_range) { '1-06-2020 / 30-06-2020' }
    let(:tweets) { [{url: "https://t.co/JRjCcfPMhb",
                     from: "NASA",
                     description: "Today is international #AsteroidDay☄️! To mark this @UN day, experts from our #PlanetaryDefense Coordination Office… ",
                     created_at: "2020-06-30 17:16:16"}] }

    subject { described_class.tweets_email(to, date_range, tweets) }

    it { expect(subject.to).to eq([to]) }
    it { expect(subject.subject).to eq("Tweets for #{date_range}") }
    it 'contains tweets attributes' do
      tweets.first.values.each do |attr|
        expect(subject.body.raw_source).to include('8789798')
      end
    end
  end
end