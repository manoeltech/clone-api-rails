namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    puts "Criando os contatos..."
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthday: Faker::Date.between(from: 50.years.ago, to: 18.years.ago)
      )
      puts "Contatos criados com sucesso!"
    end
  end
end
