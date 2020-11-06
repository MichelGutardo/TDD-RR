require 'person'


describe 'Attributes' do
    
    it 'have_attributes' do
        person = Person.new
        person.name = "Michel"
        person.age  = 30

        expect(person).to have_attributes(name:"Michel", age:30)
    end

    it 'start_with and be greater then and using instance var' do
        person = Person.new
        person.name = "Michel"
        person.age  = 30

        expect(person).to have_attributes(name: start_with("M"), age: (be >=30))
        expect(person).to have_attributes(name: starting_with("M"), age: (be >=30))
        expect(person).to have_attributes(name: a_string_starting_with("M"), age: (be >=30))
    end
  

end