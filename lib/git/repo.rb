#require 'github_api'
#class Repo
#  attr_accessor :repo_name, :data_type
#  include GithubApi
#
#  def initialize(*attr)
#    super(attr.first)
#    @repo_name = attr.first[:repo_name]
#    @data_type = attr.first[:data_type]
#  end
#
#  def generate_url
#    return "some more details are needed" unless @repo_name && @username
#    File.join(base_url, datatype, get_api, @username.strip, @repo_name.strip).strip
#  end
#
#  def get_api
#    "repos/show"
#  end
#
#  class << self
#    def fetch(*attr)
#      user = Repo.new(*attr)
#      user.fetch
#    end
#  end
#
#def parse_result(response)
#    repo = Yajl::Parser.parse(response)
# end
#
# def error_handler(response)
#    error = Yajl::Parser.parse(response)["error"]
# end
#
#
#end
