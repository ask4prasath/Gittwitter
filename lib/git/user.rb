#require 'github_api'
#class User
#  include GithubApi
#  attr_accessor :username, :return_type
#
#  def initialize(*attr)
#    @username = attr.first[:username]
#    @return_type = attr.first[:return_type]
#
#    @repos = attr.first[:repos]
#  end
#
#
#  class << self
#    def fetch(*attr)
#      user = User.new(*attr)
#      user.fetch
#    end
#  end
#
#  def generate_url
#    return "datails missing" unless  @username
#    if @repos
#      File.join(base_url, get_return_type, get_user_repos_api, @username.strip).strip
#    else
#      File.join(base_url, get_return_type, get_user_api, @username.strip).strip
#    end
#
#  end
#
#  def get_user_api
#    "user/show"
#  end
#
#  def get_user_repos_api
#    "repos/show"
#  end
#
#
#  def parse_result(response)
#    if @repos
#      user_repos = Yajl::Parser.parse(response)["repositories"]
#      repos = user_repos.map {|u|  u["name"]}.join(',')
#      p "List of your repos : #{ repos}"
#    else
#      user = Yajl::Parser.parse(response)["user"]
#      user.map {|u| u.join(":")}
#    end
#
#  end
#
#  def error_handler(response)
#    error = Yajl::Parser.parse(response)["error"]
#  end
#
#end
