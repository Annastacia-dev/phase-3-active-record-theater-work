puts "Seeding data..."

#Roles
5.times do
    Role.create(
        character_name: Faker::TvShows::GameOfThrones.character
    )
    end

#Auditions
15.times do
    Audition.create(
        actor: Faker::Name.name,
        location: Faker::Address.city,
        phone: Faker::PhoneNumber.phone_number,
        hired: Faker::Boolean.boolean,
        role_id: Role.all.sample.id
    )
    end

puts "Done seeding!"