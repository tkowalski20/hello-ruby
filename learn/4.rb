# Run the code in this file by typing:
# ruby 4.rb
# into your command-line interface.

# Called a dictionary
me = { name: "Tristan", location: "Chicago", status: "Student"}
# key-value pairs

my_profile = { 
    name: "Tristan",
    location: { 
        city: "Chicago", 
        neighborhood: "Evanston"
        }, 
    status: "Student"
}
#puts my_profile

#puts my_profile[:location][:city]

my_profile[:pets] = "Harper & Bella"
#puts my_profile

#puts my_profile[:pets]

my_profile[:name] = "Charles"
puts my_profile
