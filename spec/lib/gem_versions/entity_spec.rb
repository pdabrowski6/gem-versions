require 'spec_helper'

RSpec.describe GemVersions::Entity do
  subject { described_class.new(parsed_html) }

  let(:parsed_html) { Nokogiri::HTML.fragment(html) }
  let(:html) {
    <<-HTML
    <div class='t-list__item'>0.1.2</div>
    <small class='gem__version__date'>01/01/2020 -</small>
    <span class='gem__version__date'>(85.0 KB)</span>
    HTML
  }

  describe '#version' do
    it 'returns gem version' do
      expect(subject.version).to eq('0.1.2')
    end
  end

  describe '#published_at' do
    it 'returns gem publication date' do
      expect(subject.published_at).to eq('01/01/2020')
    end
  end

  describe '#size' do
    it 'returns gem size' do
      expect(subject.size).to eq('85.0 KB')
    end
  end
end
