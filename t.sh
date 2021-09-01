rm *.gem
gem build JsonBuddy.gemspec
sudo gem install jsonbuddy-*.gem
cd examples