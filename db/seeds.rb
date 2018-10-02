# /db/seeds.rb

User.create name: 'Julio', status: :active, kind: :manager, email: 'julio@teste.com', password: 123456
User.create name: 'Manuel', status: :active, kind: :therapist, email: 'manuel@teste.com', password: 123456
User.create name: 'Marcos', status: :active, kind: :therapist, email: 'marcos@teste.com', password: 123456



Client.create name: 'Vitor Ganiko', birthdate: 'June 9, 1997', email: 'japao@teste.com', occupation: 'pasteleiro'
Client.create name: 'Vitor Festine', birthdate: 'September 9, 1997', email: 'vitao@teste.com', occupation: 'chefe do gordao'
Client.create name: 'Rodrigo Moura', birthdate: 'December 22, 1995', email: 'rodrigo@teste.com', occupation: 'estudante'
Client.create name: 'Kathleen Saraiva', birthdate: 'June 19, 1997', email: 'saraiva@teste.com', occupation: 'trabalha na google'


Therapy.create name: 'Acupuntura', price: '200.00'
Therapy.create name: 'Shiatshu', price: '250.00'
Therapy.create name: 'Quick Massage', price: '180.00'
