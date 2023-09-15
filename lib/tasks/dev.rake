namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    puts "Criando os tipos de contato..."
    kinds = %w(Amigo Contato Comercial)
    kinds.each do |kind|
    Kind.create!(
      description: kind
    )
    puts "Tipos de contato criados com sucesso!"
    end

    #############################################

    puts "Criando os contatos..."
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthday: Faker::Date.between(from: 50.years.ago, to: 18.years.ago),
        kind: Kind.all.sample
      )
      puts "Contatos criados com sucesso!"
    end

    
  end
end
