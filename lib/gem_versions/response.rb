module GemVersions
  class Response
    def initialize(response)
      @response = response
    end

    def success?
      @response.code == 200
    end

    def body
      @response.body
    end
  end
end
