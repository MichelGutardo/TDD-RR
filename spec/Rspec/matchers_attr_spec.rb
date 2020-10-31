require 'pessoa'

describe 'Attributes' do

    it 'have_attributes' do
        pessoa = Pessoa.new
        pessoa.name = "Michel"
        pessoa.age  = 30

        expect(pessoa).to have_attributes(name:"Michel", age:30)
    end

  

end