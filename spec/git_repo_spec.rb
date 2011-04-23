#require 'spec_helper'
#
#describe 'GIT Repo' do
#
#  context "action here" do
#    it "Should return Array" do
#      git_repo = GITRepo.new
#	  commits = git_repo.some_name
#	  commits.class.should == Array
#    end
#
#    it "Should return a url to get user details" do
#      user_url = User.new(:username => "ssurendran")
#	user_url.generate_url.should == "http://github.com/api/v2/json/user/show/ssurendran"
#    end
#
#    it "Should return a url which return type should be xml" do
#        user_url = User.new(:username => "ssurendran", :return_type => "xml")
#	user_url.generate_url.should == "http://github.com/api/v2/xml/user/show/ssurendran"
#    end
#
#    it "Should generate a url which to get user repos" do
#        user_url = User.new(:username => "ssurendran", :repos => "blah")
#	user_url.generate_url.should == "http://github.com/api/v2/json/repos/show/ssurendran"
#    end
#
#
#  end
#
#end
