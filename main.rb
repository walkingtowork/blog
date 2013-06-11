require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :username => 'alexlin',
  :password => '',
  :database => 'blog',
  :encoding => 'utf8'
)

require_relative "models/author"
require_relative "models/comment"
require_relative "models/keyword"
require_relative "models/post"
require_relative "models/view_count"

require_relative "controllers/authors"
require_relative "controllers/comments"
require_relative "controllers/keywords"
require_relative "controllers/posts"
require_relative "controllers/view_counts"

get "/" do
  @people = Person.all
  @potlucks = Potluck.all
  @items = Item.all
  @tags = Tag.all

  erb :index
end