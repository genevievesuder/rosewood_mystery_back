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

b1 = Book.create(title: Faker::Book.title, author: "JC Lebsack", genre: Faker::Book.genre)
b2 = Book.create(title: Faker::Book.title, author: Faker::Name.name, genre: Faker::Book.genre)
b3 = Book.create(title: "The Lost Key", author: "Ulysses N. Locke", genre: "L-5-4")
b5 = Book.create(title: Faker::Book.title, author: Faker::Name.name, genre: Faker::Book.genre)
b6 = Book.create(title: Faker::Book.title, author: Faker::Name.name, genre: Faker::Book.genre)
b7 = Book.create(title: Faker::Book.title, author: Faker::Name.name, genre: Faker::Book.genre)
b8 = Book.create(title: Faker::Book.title, author: Faker::Name.name, genre: Faker::Book.genre)
b4 = Book.create(title: Faker::Book.title, author: Faker::Name.name, genre: Faker::Book.genre)
b9 = Book.create(title: Faker::Book.title, author: Faker::Name.name, genre: Faker::Book.genre)
b10 = Book.create(title: Faker::Book.title, author: Faker::Name.name, genre: Faker::Book.genre)

puts "Finding clues..."

c1 = Clue.create(content: "Explore the library...", book: b1, mystery: rosewood_library)
c2 = Clue.create(content: "It travels all around the world without ever leaving it's corner.", book: b2, mystery: rosewood_library)
c3 = Clue.create(content: "An interesting poem...", book: b3, mystery: rosewood_library)
c4 = Clue.create(content: "You found a photograph that belonged to someone named Lillian.", book: b4, mystery: rosewood_library)
c5 = Clue.create(content: "It appears that Lillian was deeply betrayed...", book: b5, mystery: rosewood_library)
c6 = Clue.create(content: "There was a note in the thermostat.", book: b6, mystery: rosewood_library)
c7 = Clue.create(content: "It looks like you could open the globe...", book: b7, mystery: rosewood_library)
c8 = Clue.create(content: "You found a key!", book: b8, mystery: rosewood_library)
c9 = Clue.create(content: "There was a book inside the globe.. It's locked. Seems like there is a part missing from the front...", book: b9, mystery: rosewood_library)
c10 = Clue.create(content: "A door has opened.", book: b10, mystery: rosewood_library)

puts "Meeting hinters..."

h1 = Hinter.create(name: "Theo Marsh")
h2 = Hinter.create(name: "Emma Osbourne")
h3 = Hinter.create(name: "Ian Bennett")
h4 = Hinter.create(name: "Ms. Warren")

puts "Learning hints..."

h1 = Hint.create(info: "Look for a book with a crescent moon on it.", hinter: h1, mystery: rosewood_library)
h2 = Hint.create(info: "You better check the thermostat...", hinter: h2, mystery: rosewood_library)
h3 = Hint.create(info: "I think there is a spot for that book in the library.", hinter: h3, mystery: rosewood_library)
h4 = Hint.create(info: "Ms. Warren seems lonely.", hinter: h4, mystery: rosewood_library)

puts "Seeding complete"