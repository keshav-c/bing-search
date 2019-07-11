require 'rest-client'

URL = "https://www.bing.com/search"

def search_bing query
  query.gsub! /\s/, '+'
  RestClient.get URL, params: {q: query}
end
