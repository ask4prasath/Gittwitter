require 'yajl'
module GithubApi

  
 def base_url
    "http://github.com/api/v2"
  end

  def fetch
    p generate_url
    a = "http://github.com/api/v2/json/commits/list/tanoku/redcarpet/master?page=1"
    #url = http://github.com/api/v2/json/commits/list/mojombo/grit/master
    RestClient.get(generate_url) do |response, result, block|
      case response.code
      when 200
        p parse_result(response)
      when 404
        p error_handler(response)
      else
        response.return!(request, result, &block)
      end
    end

  end

  def get_return_type
    @return_type || "json"
  end

end
