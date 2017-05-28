require 'app_helper'

RSpec.describe UrlShortener::Urls::Operations::Create do
  let(:params) {}

  subject { described_class.new.(params) }

  context 'when params are valid' do
    let(:params) { { longUrl: 'http://google.com' } }

    it { is_expected.to be_kind_of(Dry::Monads::Either::Right) }
  end

  context 'otherwise' do
    let(:params) { {} }

    it { is_expected.to be_kind_of(Dry::Monads::Either::Left) }
  end
end
