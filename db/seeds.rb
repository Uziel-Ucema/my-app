# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create a user with password
user0 = User.create(email: 'as@gmail.com', password: 'asd', username: 'michael')

folder0 = Folder.create(name: 'American Bulldog')
folder1 = Folder.create(name: 'Basset Hound')
folder2 = Folder.create(name: 'Beagle')
folder3 = Folder.create(name: 'Boxer')
folder4 = Folder.create(name: 'Chihuahua')
folder5 = Folder.create(name: 'Chow Chow')
folder6 = Folder.create(name: 'English Cocker Spaniel')
folder7 = Folder.create(name: 'English Setter')
folder8 = Folder.create(name: 'German Shepherd')
folder9 = Folder.create(name: 'German Shorthaired')
folder10 = Folder.create(name: 'Great Pyrenees')
folder11 = Folder.create(name: 'Havanese')
folder12 = Folder.create(name: 'Japanese Chin')
folder13 = Folder.create(name: 'Labrador Retriever')
folder14 = Folder.create(name: 'Leonberger')
folder15 = Folder.create(name: 'Miniature Pinscher')
folder16 = Folder.create(name: 'Miniature Poodle')
folder17 = Folder.create(name: 'Pomeranian')
folder18 = Folder.create(name: 'Poodle')
folder19 = Folder.create(name: 'Pug')
folder20 = Folder.create(name: 'Saint Bernard')
folder21 = Folder.create(name: 'Samoyed')
folder22 = Folder.create(name: 'Scottish Terrier')
folder23 = Folder.create(name: 'Shiba Inu')
folder24 = Folder.create(name: 'Shih-Tzu')
folder25 = Folder.create(name: 'Siberian Husky')
folder26 = Folder.create(name: 'Staffordshire Bull Terrier')
folder27 = Folder.create(name: 'Wheaten Terrier')
folder28 = Folder.create(name: 'Yorkshire Terrier')

location0 = Location.create(name: 'Belgrano')
location1 = Location.create(name: 'Colegiales')
location2 = Location.create(name: 'Palermo')

user1.folders << folder13