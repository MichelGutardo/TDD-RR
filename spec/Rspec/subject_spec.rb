require "calculator"
require 'string_not_empty'

describe Calculator,"Implicit Subject"  do # implicit because describe using class name

        it 'positives' do

            result = subject.sum(1,1)
            expect(result).to eq(2) 

        end
end

describe "Explicit Subject changing var name" do # implicit because describe using class name

    subject(:calc) {Calculator.new}  # changing explicit subject specifing class name

    it 'positive and negative' do

        result = calc.sum(-1,1)
        expect(result).to eq(0) #or eql

    end
        
        
end

        
describe Calculator,"Explicit Subject w/ Helper" do # implicit because describe using class name
    
    subject(:calc) {described_class.new} 

    it 'negatives' do
        result = subject.sum(-1,-1)
        expect(result).to eq(-2) 
    end
        
        
end


describe String,"Testing sub-describe" do
    
    describe StringNotEmpty,"Sub-describe" do
        
        context "#notempty" do
            it "new instance" do
                result = subject.notempty()
                expect(result).to eq("Not Empty")                
            end
        end
        
    end

    describe StringNotEmpty,"Sub-describe with params" do

        subject(:subject) { described_class.new("I am not empty")} #with params 

        context "#params" do

            it "shows given param" do
                result = subject.params()
                expect(result).to eq("I am not empty")                
            end

        end
        
    end
end