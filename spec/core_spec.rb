require 'spec_helper'

describe 'core methods' do

  context "application root" do
    it "Should return application root" do
      application_path = %x[pwd].chomp
      p "---Applcation path---#{application_path}"
      Core::GitApplication.root.should eq(application_path)
    end
  end

end
