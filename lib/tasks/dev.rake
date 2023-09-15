namespace :dev do
  desc "TODO"
  task setup: :environment do
    puts "Criando os contatos..."
    100.times do
      Contact.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthday: Faker::Date.between(50.years.ago, 18.years.ago)
      )
      puts "Contatos criados com sucesso!"
  end
end
