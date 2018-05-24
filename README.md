А simple module for requests to Instagram without an API key.

### Installation

```sh
$ gem install proxy-instagram-scraper
```

Or with Bundler in your Gemfile.

```ruby
gem 'proxy-instagram-scraper'
```

### Methods

After installation you can do following requests to Instagram:

```ruby
# Search by tag or username:
ProxyInstagramScraper.search( "gopro" )

# Get user media nodes:
ProxyInstagramScraper.get_user_media_nodes( "gopro" )

# Pass an "id" of node to offset:
ProxyInstagramScraper.get_user_media_nodes( "gopro", "1259825963188747360" )

# Get media nodes by tag:
nodes = ProxyInstagramScraper.get_tag_media_nodes( "gopro" )

# Get next portion of nodes of same tag by passing last node "id":
ProxyInstagramScraper.get_tag_media_nodes( "gopro", nodes.last["id"] )

# Get media info:
ProxyInstagramScraper.get_media( nodes.first["code"] )
ProxyInstagramScraper.get_media( "BGGnlHDBV3N" )
```