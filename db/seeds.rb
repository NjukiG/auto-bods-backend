puts "🌱 Seeding spices..."

# Seed your database here

# Members seeds
Member.create(name: "George Njuki", email: "njukiG@gmail.com", address: "Roysambu", trainer_id: 1, package_id: 1, review_id: 1)
Member.create(name: "Gloria Muange", email: "muangeG@gmail.com", address: "Kitindo", trainer_id: 2, package_id: 2, review_id: 2)
Member.create(name: "Faith Syombua", email: "syombuaF@gmail.com", address: "Umoja", trainer_id: 3, package_id: 3, review_id: 3)
Member.create(name: "Linah Mutheu", email: "mutheuL@gmail.com", address: "Karen", trainer_id: 4, package_id: 1, review_id: 4)
Member.create(name: "Jemimah Nzisa", email: "nzisaJ@gmail.com", address: "Bypass", trainer_id: 1, package_id: 2, review_id: 5)
Member.create(name: "Caroline Mueni", email: "mueniC@gmail.com", address: "Syokimau", trainer_id: 2, package_id: 3, review_id: 6)

# Trainers seeds

Trainer.create(name: "Francis Otis", email: "otisF@gmail.com", gender: "male")
Trainer.create(name: "Caroline Onyi", email: "onyiC@gmail.com", gender: "female")
Trainer.create(name: "Brian Mutinda", email: "mutindaB@gmail.com", gender: "male")
Trainer.create(name: "Suzan Atwoli", email: "atwoliS@gmail.com", gender: "female")


# Package seeds

Package.create(name: "Bodybuilding", description: "Training with weights to build up muscle mass", amount: 3000)




puts "✅ Done seeding!"
