require 'app_helper'

RSpec.describe UrlShortener::Urls::Validations::Form do
  let(:params)  { { longUrl: longUrl } }
  let(:longUrl) { '' }

  subject { described_class.(params) }

  context 'when longUrl is valid URI' do
    let(:longUrl) { 'http://google.com' }

    it { expect(subject.success?).to eq(true) }
  end

  context 'when longUrl is invalid URI' do
    let(:longUrl) { 'invalid' }

    it { expect(subject.success?).to eq(false) }
    it { expect(subject.errors).to eq(longUrl: ['is not a valid URI']) }
  end

  context 'when params are empty' do
    let(:params) { {} }

    it { expect(subject.success?).to eq(false) }
    it { expect(subject.errors).to eq(longUrl: ['is missing']) }
  end
end
