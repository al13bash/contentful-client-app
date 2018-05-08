# README

**Contentful-client-app** is a rails 5.2 web application that displays content pulled from Contentful. The Contentful API is documented [here](https://www.contentful.com/developers/docs/references/content-delivery-api/).

App exposes three routes:

1. /index - Display a list of categories and link to their respective pages

2. /category/{category-title} - Display a list of articles belonging to the category. The page displays 8 articles per page. Visitors are able to paginate from page to page and access every article in the category.
ok
3. /{article-slug} - Display an article with the corresponding slug.

Live demo [here](https://contentful-client-app.herokuapp.com/).

### Ruby version
2.5.0
### Additional gems used
- [haml](https://github.com/haml/haml) - easier building of views
- [redcarpet](https://github.com/vmg/redcarpet) - markdown processor
- [kaminari](https://github.com/kaminari/kaminari) - pagination

## Setup instructions
- clone repo
- create `config/master.key` file with necessary contents
- install necessary ruby version (2.5.0 at the moment)
- `gem install bundler`
- `bundle install`
- `rails db:setup`
- `rails s`
- enjoy content! :)
