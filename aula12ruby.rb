require 'csv'
require 'json'

# if File.exist?('academy.csv') 
#     CSV.foreach('academy.csv', headers: true) do |row|
#         puts row['Nome']
#     end
# else
#     CSV.foreach('academy.csv') do |row|
#         puts row[1]
#     end
# end


# CSV.foreach('academy2.csv') do |row|
#     puts row[1]
# end


# CSV.open('alunos.csv', 'wb') do |csv|
#     csv << ['ID', 'Nome', 'Idade', 'Cidade']
#     csv << [1, 'Carlos', 32, 'São Paulo']
#     csv << [2, 'Ana', 27, 'Rio de Janeiro']
#     csv << [3, 'Maria', 22, 'Campinas']
# end

# CSV.foreach('alunos.csv', headers: true) do |row|
#     puts row['Nome']
# end

# file = File.read('academy3.json')
# data_hash = JSON.parse(file)
# p data_hash

# data = {
#     nome: "João",
#     idade: 21,
#     cidade: "Mogi Guaçu"
# }

# File.open('aluno1.json', 'w') do |file|
#     file.write(JSON.pretty_generate(data))
# end    