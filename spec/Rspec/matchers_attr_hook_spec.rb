require 'person'


describe 'Attributes' do
    before(:each) do
        puts ">>>>>> before each test"
        @person_instance = Person.new
    end
    
    after(:each) do
        puts ">>>>>> after each test"
    end

    around(:each) do |test|
        puts ">>>>>> around/before each test"
        @person_instance = Person.new
        puts ">>>>>> around/after each test"
    end

    
    it 'have_attributes' do
        person = Person.new
        person.name = "Michel"
        person.age  = 30

        expect(person).to have_attributes(name:"Michel", age:30)
    end

    it 'start_with and be greater then and using instance var' do
        @person_instance.name = "Michel"
        @person_instance.age  = 30

        expect(@person_instance).to have_attributes(name: start_with("M"), age: (be >=30))
        expect(@person_instance).to have_attributes(name: starting_with("M"), age: (be >=30))
        expect(@person_instance).to have_attributes(name: a_string_starting_with("M"), age: (be >=30))
    end
  

end