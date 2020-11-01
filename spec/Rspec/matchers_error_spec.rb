require "pessoa"

describe "Raise Error" do 
    it "#year_birth generic exception" do
        pessoa = Pessoa.new
        expect{pessoa.YearBirth}.to raise_exception
    end
    it "#year_birth type error" do
        pessoa = Pessoa.new
        expect{pessoa.YearBirth}.to raise_error(TypeError)
    end
end