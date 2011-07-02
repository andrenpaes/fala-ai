# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
#require 'csv'
#CSV.foreach('palestras.csv') do |row|
#  puts "Palestra.create(:nome => '#{row[0]}', :palestrante => '#{row[3]}', :data => '#{row[1]}', :horario => '#{row[2]}')"
#end
Palestra.create(:nome => 'Liderança adaptável: acelerando a agilidade organizacional', :palestrante => 'Jim Highsmith', :data => '6/29/2011', :horario => '9:00')
Palestra.create(:nome => 'Da visão a produção - Criando produtos e lançando ao mercado', :palestrante => 'Daniel Wildt e Rafael Helm', :data => '6/29/2011', :horario => '11:00')
Palestra.create(:nome => 'A importância dos testes de regressão', :palestrante => 'Fabio Massa e Diogo Baeder', :data => '6/29/2011', :horario => '11:00')
Palestra.create(:nome => 'A escola do século XXI tem que ser ágil, lean e empreendedora. Ponto.', :palestrante => 'Alexandre Gomes e Henrique Bastos', :data => '6/29/2011', :horario => '11:00')
Palestra.create(:nome => 'Distributed Retrospectives', :palestrante => 'Sharlene McKinnon', :data => '6/29/2011', :horario => '11:00')
Palestra.create(:nome => 'Scrumban - do Scrum ao Kanban', :palestrante => 'Rodrigo de Toledo', :data => '6/29/2011', :horario => '11:00')
Palestra.create(:nome => 'What Concerns Beginner Test-Driven Development Practitioners: A Qualitative Analysis of Opinions in an Agile Conference', :palestrante => 'Mauricio Aniche (USP), Thiago Ferreira (USP) e Marco Gerosa (USP)', :data => '6/29/2011', :horario => '11:00')
Palestra.create(:nome => 'Método Ágil aplicado ao Desenvolvimento de Software Confiável baseado em Componentes', :palestrante => 'Alan Braz (Unicamp), Cecília M. F. Rubira (Unicamp) e Marco Vieira (Universidade de Coimbra)', :data => '6/29/2011', :horario => '11:00')
Palestra.create(:nome => 'An Agile Technique for Prioritizing Features in Environments with Multiple Stakeholders', :palestrante => 'Eduardo Negrão (ITA) e Eduardo Guerra (ITA)', :data => '6/29/2011', :horario => '11:00')
Palestra.create(:nome => 'Continuous Inspection - Uma abordagem efetiva para melhoria contínua da qualidade de software', :palestrante => 'Gabriel de Souza Pereira Moreira e Roberto Pepato Mellado', :data => '6/29/2011', :horario => '12:00')
Palestra.create(:nome => 'There and back again (Lá e de Volta Outra Vez)', :palestrante => 'Cecilia Fernandes', :data => '6/29/2011', :horario => '12:00')
Palestra.create(:nome => 'Slicing and dicing your user stories', :palestrante => 'Jenny Wong e Danilo Sato', :data => '6/29/2011', :horario => '12:00')
Palestra.create(:nome => 'LIGHTNING TALKS 1', :palestrante => 'Marlon Luz, Luca Bastos, Rodrigo Yoshima, Daniel William, Hélio Medeiros', :data => '6/29/2011', :horario => '14:30')
Palestra.create(:nome => 'Quando o design apodrece, TDD é seu melhor amigo', :palestrante => 'Mauricio Aniche e Guilherme Silveira', :data => '6/29/2011', :horario => '14:30')
Palestra.create(:nome => '"COWBLAM! nossa metodologia é a melhor!"', :palestrante => 'Alexandre Freire', :data => '6/29/2011', :horario => '14:30')
Palestra.create(:nome => 'Scrum com Equipes Distribuídas', :palestrante => 'Rafael Prikladnicki', :data => '6/29/2011', :horario => '14:30')
Palestra.create(:nome => 'Desenvolvendo outside in com BDD', :palestrante => 'Giovanni Bassi e Victor Hugo Germano', :data => '6/29/2011', :horario => '14:30')
Palestra.create(:nome => 'Integrando inspeção de usabilidade à metodologia ágil Scrum', :palestrante => 'Fernanda Martins (UFPE)', :data => '6/29/2011', :horario => '14:30')
Palestra.create(:nome => 'Acompanhamento de projetos ágeis distribuído - Adaptando as práticas do Scrum', :palestrante => 'Hernan Munoz (UFPE), Teresa M Medeiros Maciel (UFPE) e Silvio Romero De Lemos Meira (UFPE)', :data => '6/29/2011', :horario => '14:30')
Palestra.create(:nome => 'An Empirical Analysis of eXtreme Programming Practices and its Impact on Software Quality Metrics', :palestrante => 'Roberto Pepato Mellado (ITA), Gabriel De Souza Pereira Moreira (ITA), Adilson Marques Da Cunha (ITA), Luiz Alberto Vieira Dias (ITA) e Robson Luiz Monteiro Junior (ITA)', :data => '6/29/2011', :horario => '14:30')
Palestra.create(:nome => 'Uma Abordagem Empírica para o Tratamento de Bugs em Ambientes Ágeis', :palestrante => 'Andreia Matos Dos Santos (UFAM, INdT), Börje Karlsson (INdT) e Andre Cavalcante (UDAM, INdT)', :data => '6/29/2011', :horario => '14:30')
Palestra.create(:nome => 'Exploring User Wish through Mindmapping', :palestrante => 'Kenji Hiranabe', :data => '6/29/2011', :horario => '15:30')
Palestra.create(:nome => 'GreenBar - Inserindo cultura de testes automatizados na sua empresa', :palestrante => 'Rafael Ponte', :data => '6/29/2011', :horario => '15:30')
Palestra.create(:nome => 'Gerenciando sua dívida técnica', :palestrante => 'Danilo Sato', :data => '6/29/2011', :horario => '15:30')
Palestra.create(:nome => 'A sociedade do Dojo e os grupos de Capoeira', :palestrante => 'Bruno Pedroso', :data => '6/29/2011', :horario => '17:00')
Palestra.create(:nome => 'Tente Desenvolver Diferente com TDD', :palestrante => 'Mauricio Matsuda e Altieres Lopes', :data => '6/29/2011', :horario => '17:00')
Palestra.create(:nome => 'Scrum na Horta', :palestrante => 'Matheus Haddad e Flavio Logullo', :data => '6/29/2011', :horario => '17:00')
Palestra.create(:nome => 'Reservoir Dogs - a shot at agile portfolio management', :palestrante => 'Thomas Lissajoux', :data => '6/29/2011', :horario => '17:00')
Palestra.create(:nome => 'Agile Database Development', :palestrante => 'Pramod Sadalage', :data => '6/29/2011', :horario => '17:00')
Palestra.create(:nome => 'Retrato da comunidade acadêmica de Métodos Ágeis no Brasil', :palestrante => 'Eduardo Katayama (USP) e Alfredo Goldman (USP)', :data => '6/29/2011', :horario => '17:00')
Palestra.create(:nome => 'Da Essência à Necessidade - Os Mitos do Mundo Ágil!', :palestrante => 'Paulo Igor Alves Godinho e Anderson Silveira', :data => '6/29/2011', :horario => '18:00')
Palestra.create(:nome => 'Problemas e soluções no desenvolvimento remoto: duas empresas, um projeto', :palestrante => 'Lucas Cavalcanti e Dov Bigio', :data => '6/29/2011', :horario => '18:00')

