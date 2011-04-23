Dir["lib/**/*.rb"].sort.each { |file| require(File.dirname(__FILE__) + "/"+ file) }

puts "Welcome to Spritle Ruby App!"
p "Please enter your gthub username"
username = gets
p "Please enter any string to see user repos"
repos = gets
user = User.new(:username => username.strip, :repos => !repos.strip.empty?)
user.fetch


