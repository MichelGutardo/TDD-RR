require "person"

describe "Raise Error" do 
    it "#year_birth generic exception" do
        person = Person.new
        expect{person.YearBirth}.to raise_exception
    end
    
    it "#year_birth type error" do
        person = Person.new
        expect{person.YearBirth}.to raise_error(TypeError)
    end
end