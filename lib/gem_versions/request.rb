module GemVersions
  class Request
    def initialize(gem_name)
      @gem_name = gem_name
    end

    def call
      response = RestClient.get(versions_url)
      GemVersions::Response.new(response)
    end

    private

    def versions_url
      "https://rubygems.org/gems/#{@gem_name}/versions"
    end
  end
end
