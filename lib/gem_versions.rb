require 'rest-client'
require 'nokogiri'
require 'gem_versions/response'
require 'gem_versions/request'
require 'gem_versions/entity'

module GemVersions
  class GemNotFound < StandardError; end

  class << self
    def of(gem_name)
      response = GemVersions::Request.new(gem_name).call
      raise GemNotFound, gem_name unless response.success?

      html = Nokogiri::HTML(response.body)
      html.css('div.versions ul li.gem__version-wrap').collect do |item|
        GemVersions::Entity.new(item)
      end
    end
  end
end
