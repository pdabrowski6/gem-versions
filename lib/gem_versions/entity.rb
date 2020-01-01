module GemVersions
  class Entity
    def initialize(html)
      @html = html
    end

    def version
      @html.css(".t-list__item").text
    end

    def published_at
      @html.css("small.gem__version__date").text.delete("-").strip
    end

    def size
      @html.css("span.gem__version__date").text.delete("()")
    end
  end
end
