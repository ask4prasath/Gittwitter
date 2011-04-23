require 'rubygems'
require 'yajl'
require 'rest-client'

class GITRepo

  def some_name
    @commit_list =  RestClient.get("http://github.com/api/v2/json/commits/list/briandfoy/business--isbn/master")
	commits = Yajl::Parser.parse(@commit_list)
	@commits = commits["commits"]
  end



end
