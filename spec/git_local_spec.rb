require 'spec_helper'

describe 'git local repo' do

    before(:each) do
      @git_base = GitLocal.new
    end

    it "should return git base instance" do
      @git_base.repo.class.should eq(Git::Base)
    end

    it "should return current repo" do
      @git_base.current_repo.should eq(Core::GitApplication.root + "/.git")
    end

end
