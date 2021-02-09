require "./status_update.rb"
require "./photo.rb"

status = StatusUpdate.new("I'm learning about modules in Ruby #nbd")

status.display

status.add_comment("Oh cool!")
status.add_comment("Whoa...")

status.display

status.remove_comment(1)

status.display


photo = Photo.new("https://images.pexels.com/photos/2280545/pexels-photo-2280545.jpeg", "This is what I ate for breakfast #yum #hashtag")

photo.display

photo.add_comment("That looks delicious!")
photo.add_comment("Pancakes!")

photo.display

photo.remove_comment(2)

photo.display