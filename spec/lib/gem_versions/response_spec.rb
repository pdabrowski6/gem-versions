require 'spec_helper'

RSpec.describe GemVersions::Response do
  subject { described_class.new(response) }

  let(:response) { double(body: 'body', code: 200) }

  describe '#body' do
    it 'returns response body' do
      expect(subject.body).to eq('body')
    end
  end

  describe '#success?' do
    it 'returns true when response code is 200' do
      expect(subject).to be_success
    end

    it 'returns false when response code is not 200' do
      allow(response).to receive(:code).and_return(400)

      expect(subject).not_to be_success
    end
  end
end
