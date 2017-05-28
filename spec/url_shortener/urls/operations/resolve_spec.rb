require 'app_helper'

RSpec.describe UrlShortener::Urls::Operations::Resolve do
  let(:key) {}

  subject { described_class.new.(key) }

  before do
    urls_repo.create(key: 'xxxxx1', url: 'http://google.com')
  end

  context 'when record is exist by key' do
    let(:key) { 'xxxxx1' }

    it { is_expected.to be_kind_of(Dry::Monads::Either::Right) }
  end

  context 'otherwise' do
    let(:key) { 'xxxxx0' }

    it { is_expected.to be_kind_of(Dry::Monads::Either::Left) }
  end
end
