puts "Recycling old data"
Hint.destroy_all
Clue.destroy_all
Customer.destroy_all
Hinter.destroy_all
Book.destroy_all
Mystery.destroy_all
User.destroy_all

puts "Creating user..."

u1 = User.create(email: "librarian@rosewoodlibrary.com", password: "password", character_name: "Cara S. Reader")


puts "Creating mystery..."

rosewood_library = Mystery.create(name: "Rosewood Library")


puts "Creating customers..."

100.times do
Customer.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, mystery: rosewood_library)
end

puts "Writing books..."

b1 = Book.create(title: "book title 1", author: "JC Lebsack", genre: "genre 1", image: "http://thisisanimgurlexample.net")
b2 = Book.create(title: "book title 2", author: "author name 2", genre: "genre 2", image: "http://thisisanimgurlexample.net")
b3 = Book.create(title: "book title 3", author: "author name 3", genre: "genre 3", image: "http://thisisanimgurlexample.net")
b4 = Book.create(title: "book title 4", author: "author name 4", genre: "genre 4", image: "http://thisisanimgurlexample.net")
b5 = Book.create(title: "book title 5", author: "author name 5", genre: "genre 5", image: "http://thisisanimgurlexample.net")
b6 = Book.create(title: "book title 6", author: "author name 6", genre: "genre 6", image: "http://thisisanimgurlexample.net")
b7 = Book.create(title: "book title 7", author: "author name 7", genre: "genre 7", image: "http://thisisanimgurlexample.net")
b8 = Book.create(title: "book title 8", author: "author name 8", genre: "genre 8", image: "http://thisisanimgurlexample.net")
b9 = Book.create(title: "book title 9", author: "author name 9", genre: "genre 9", image: "http://thisisanimgurlexample.net")
b10 = Book.create(title: "book title 10", author: "author name 10", genre: "genre 10", image: "http://thisisanimgurlexample.net")

puts "Finding clues..."

c1 = Clue.create(content: "Explore the library...", book: b1, mystery: rosewood_library)
c2 = Clue.create(content: "It travels all around the world without ever leaving it's corner.", book: b2, mystery: rosewood_library)
c3 = Clue.create(content: "An interesting poem...", book: b3, mystery: rosewood_library)
c4 = Clue.create(content: "You found a photograph that belonged to someone named Lillian.", book: b4, mystery: rosewood_library)
c5 = Clue.create(content: "It appears that Lillian was deeply betrayed...", book: b5, mystery: rosewood_library)
c6 = Clue.create(content: "Something very strange is going on.", book: b6, mystery: rosewood_library)
c7 = Clue.create(content: "An old looking book mysteriously appeared on your desk... It's locked.", book: b7, mystery: rosewood_library)
c8 = Clue.create(content: "A riddle...", book: b8, mystery: rosewood_library)
c9 = Clue.create(content: "You found a key.", book: b9, mystery: rosewood_library)
c10 = Clue.create(content: "Congratulations. You have solved the mystery at the Rosewood Public Library.", book: b10, mystery: rosewood_library)

puts "Meeting hinters..."

h1 = Hinter.create(name: "Theo Marsh")
h2 = Hinter.create(name: "Emma Osbourne")
h3 = Hinter.create(name: "Ian Bennett")
h4 = Hinter.create(name: "Ms. Warren")

puts "Learning hints..."

h1 = Hint.create(info: "Check out the poetry section.", hinter: h1, mystery: rosewood_library)
h2 = Hint.create(info: "You better check the thermostat...", hinter: h2, mystery: rosewood_library)
h3 = Hint.create(info: "I think there is a spot for that book in the library.", hinter: h3, mystery: rosewood_library)
h4 = Hint.create(info: "Ms. Warren seems lonely.", hinter: h4, mystery: rosewood_library)

puts "Seeding complete"