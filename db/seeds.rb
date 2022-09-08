puts "🌱 Seeding spices..."

# Seed your database here

# Members seeds
# Member.create(name: "George Njuki", email: "njukiG@gmail.com", address: "Roysambu", trainer_id: 1, package_id: 1, review_id: 1)
# Member.create(name: "Gloria Muange", email: "muangeG@gmail.com", address: "Kitindo", trainer_id: 2, package_id: 2, review_id: 2)
# Member.create(name: "Faith Syombua", email: "syombuaF@gmail.com", address: "Umoja", trainer_id: 3, package_id: 3, review_id: 3)
# Member.create(name: "Linah Mutheu", email: "mutheuL@gmail.com", address: "Karen", trainer_id: 4, package_id: 1, review_id: 4)
# Member.create(name: "Jemimah Nzisa", email: "nzisaJ@gmail.com", address: "Bypass", trainer_id: 1, package_id: 2, review_id: 5)
# Member.create(name: "Caroline Mueni", email: "mueniC@gmail.com", address: "Syokimau", trainer_id: 2, package_id: 3, review_id: 6)

10.times do
    Member.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        address: Faker::Address.city,
        trainer_id: rand(1..4),
        package_id: rand(1..3),
        review_id: rand(1..6)
    )
end


# Trainers seeds

# Trainer.create(name: "Francis Otis", email: "otisF@gmail.com", gender: "male")
# Trainer.create(name: "Caroline Onyi", email: "onyiC@gmail.com", gender: "female")
# Trainer.create(name: "Brian Mutinda", email: "mutindaB@gmail.com", gender: "male")
# Trainer.create(name: "Suzan Atwoli", email: "atwoliS@gmail.com", gender: "female")

4.times do
    Trainer.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        gender: Faker::Gender.binary_type
    )
end


# Package seeds

# Package.create(name: "Bodybuilding", description: "Training with weights to build up muscle mass", amount: 3000)
# Package.create(name: "Cardio", description: "Training with minimal weights and multiple movements of the body", amount: 4000)
# Package.create(name: "Yoga", description: "Training for calmness and flexibility", amount: 5000)


3.times do
    Package.create(
        name: Faker::Sports::Basketball.position,
        description: Faker::Quotes::Shakespeare.romeo_and_juliet,
        amount: rand(2..5) * 1000
    )
end


# Reviews seeds

# Review.create(title: "Best trainer", description: "Otis is the best bodybuiling and weighlifting trainer. I have been able to cut down on my mass and build muscles through his guidance.", trainer_id: 1)
# Review.create(title: "Best trainer", description: "Worst trainer I have ever encountered. Very impatient and unproffesional", trainer_id: 2)
# Review.create(title: "Best trainer", description: "This trainer helped me learn how to stay calm and relaxed which has helped me and my mental wellbeing. I have been able to cut down on my mass and build muscles through his guidance.", trainer_id: 3)
# Review.create(title: "Best trainer", description: "Unproffesional. Keeps giving sexual advances to all her male clients.", trainer_id: 4)
# Review.create(title: "Best trainer", description: "Otis is the best trainer. I have been able to cut down on my mass and build muscles through his guidance.", trainer_id: 4)

6.times do
    Review.create(
        title: Faker::Sports::Basketball.player,
        description: Faker::Quotes::Shakespeare.hamlet,
        trainer_id: rand(1..6)
    )
end

puts "✅ Done seeding!"
