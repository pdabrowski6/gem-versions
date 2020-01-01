require 'spec_helper'

RSpec.describe GemVersions::Request do
  subject { described_class.new('gemname') }

  describe '#call' do
    let(:response) { double }

    before do
      allow(RestClient).to receive(:get).with(
        'https://rubygems.org/gems/gemname/versions'
      ).and_return(response)
    end

    it 'requests page with gem versions' do
      subject.call

      expect(RestClient).to have_received(:get).with(
        'https://rubygems.org/gems/gemname/versions'
      ).once
    end

    it 'returns response object' do
      expect(
        subject.call
      ).to be_an_instance_of(GemVersions::Response)
    end
  end 
end
