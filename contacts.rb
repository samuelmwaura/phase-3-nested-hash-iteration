require 'pry'

# this method returns a hash, which you can pass to the remove_strawberry method:
# remove_strawberry(contacts)
def contacts
  {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
end

def remove_strawberry(contacts)
  # your code here!
contacts.each do |person,person_details_hash|
  #binding.pry
  if person == "Freddy Mercury"    #if key == Freddie
    person_details_hash.each do |attr, prop|     #iterate in the freddie hash
    if attr == :favorite_ice_cream_flavors
      prop.shift
    end
  end
end
end
end

# print the output to the terminal for inspection
pp remove_strawberry(contacts)
