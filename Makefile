help:
	@echo "make console"

console:
	irb -rubygems -I lib -r zoom_us.rb
