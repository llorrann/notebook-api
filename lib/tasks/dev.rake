namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    puts "Cadastrando os tipos de contatos..."
     
    kinds = ['Amigo', 'Comercial', 'Conhecido']
      
    kinds.each do |kind|
     puts kind
      def kind.create!(
         description: kind
      ) 
      end
    end  

    puts "Tipos de Contatos cadastrados com sucesso!"
    
    puts "Cadatrando os contatos..."
    
    100.times do |i| 
      Contact.create!(
        name: Faker::Name.name,
        email:Faker::Internet.email,
        birthdate: Faker::Date.between(from: 65.years.ago, to:18.years.ago),
        kind: Kind.all.sample
      )
    end  

    puts "Contatos cadastrados com sucesso!"

  end

end
