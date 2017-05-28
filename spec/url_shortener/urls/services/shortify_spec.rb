require 'app_helper'

RSpec.describe UrlShortener::Urls::Services::Shortify do
  let(:params) { { longUrl: 'http://google.com' } }

  subject { described_class.new.(params) }

  it { expect(subject.url).to eq(params[:longUrl]) }

  it { expect(subject.key.size).to eq(described_class::KEY_LENGTH) }

  it 'persist row in database' do
    expect { subject }.to change { urls_repo.urls.count }.by(1)
  end
end
