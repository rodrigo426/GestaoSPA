# /db/seeds.rb

#User.create name: 'Julio', status: :active, kind: :gerente, email: 'julio@teste.com', password: 123456
User.create name: 'Rodrigo', status: :active, kind: :tecnico, email: 'rodrigomoura426@gmail.com', password: 'umv6krc2ze'
User.create name: 'Manuel', status: :active, kind: :terapeuta, email: 'manuel@teste.com', password: 123456
#User.create name: 'Marcos', status: :active, kind: :terapeuta, email: 'marcos@teste.com', password: 123456



Client.create name: 'Vitor Ganiko', birthdate: 'June 9, 1997', email: 'japao@teste.com', occupation: 'pasteleiro'
Client.create name: 'Vitor Festine', birthdate: 'September 9, 1997', email: 'vitao@teste.com', occupation: 'chefe do gordao'
Client.create name: 'Rodrigo Moura', birthdate: 'December 22, 1995', email: 'rodrigo@teste.com', occupation: 'estudante'
Client.create name: 'Kathleen Saraiva', birthdate: 'June 19, 1997', email: 'saraiva@teste.com', occupation: 'trabalha na google'


Therapy.create name: 'Acupuntura', price: '200.00'
Therapy.create name: 'Shiatshu', price: '250.00'
Therapy.create name: 'Quick Massage', price: '180.00'



#PhoneClient.create number:'22331122', client_id: '1'
#PhoneClient.create number:'22331122', client_id: '1'
#PhoneClient.create number:'22331122', client_id: '1'
#PhoneClient.create number:'22331122', client_id: '2'
#PhoneClient.create number:'22331122', client_id: '3'
#PhoneClient.create number:'22331122', client_id: '4'
#PhoneClient.create number:'22331122', client_id: '5'
#PhoneClient.create number:'22331122', client_id: '6'
#PhoneClient.create number:'22331122', client_id: '7'