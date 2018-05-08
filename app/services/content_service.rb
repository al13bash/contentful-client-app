class ContentService
  class << self
    def categories
      client.entries(content_type: 'category', 'fields.availableOn[in]' => ['infotoss.com'])
    end

    def category(title)
      client.entries(content_type: 'category',
                     'fields.availableOn[in]' => ['infotoss.com'],
                     'fields.title' => title).first
    end

    def articles(category_title, page)
      client.entries(content_type: 'article', limit: 8, skip: (page.to_i - 1) * 8,
                     'fields.availableOn[in]' => ['infotoss.com'],
                     'fields.categories.sys.id' => category(category_title).id)
    end

    def article(slug)
      client.entries(content_type: 'article',
                     'fields.availableOn[in]' => ['infotoss.com'],
                     'fields.slug' => slug).first
    end

    private

    def client
      @_client ||= Contentful::Client.new(
        access_token: Rails.application.credentials.contentful_access_token,
        space: Rails.application.credentials.contentful_space,
        max_include_resolution_depth: 1
      )
    end
  end
end
