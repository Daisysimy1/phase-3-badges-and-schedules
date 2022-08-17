# Write your code here.
def badge_maker name
    "Hello, my name is #{name}."
  end
  
  def batch_badge_creator nameArray
    nameArray.map { |name| "Hello, my name is #{name}." }
  end
  
  def assign_rooms nameArray
    nameArray.map { |name| "Hello, #{name}! You'll be assigned to room #{(nameArray.find_index name) + 1}!" }
  end
  
  def printer nameArray
    badges = batch_badge_creator(nameArray)
    badges.each { |badge| puts badge }
  
    rooms = assign_rooms(nameArray)
    rooms.each { |room| puts room }
  end