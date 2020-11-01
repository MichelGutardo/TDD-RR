require 'pessoa'

describe 'Attributes' do

    it 'have_attributes' do
        pessoa = Pessoa.new
        pessoa.name = "Michel"
        pessoa.age  = 30

        expect(pessoa).to have_attributes(name:"Michel", age:30)
    end

    it 'start_with and be greater then' do
        pessoa = Pessoa.new
        pessoa.name = "Michel"
        pessoa.age  = 30

        expect(pessoa).to have_attributes(name: start_with("M"), age: (be >=30))
        expect(pessoa).to have_attributes(name: starting_with("M"), age: (be >=30))
        expect(pessoa).to have_attributes(name: a_string_starting_with("M"), age: (be >=30))
    end
  

end