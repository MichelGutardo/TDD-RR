describe "Matchers_1" do

    context "equal / be to compare objects" do

        it 'using equal' do
            result  = 1.to_s
            result2 = result
            expect(result).to equal(result2) 
        end

        it 'using not_to equal' do
            result  = 1.to_s
            result2 = 2.to_i
            expect(result).not_to equal(result2) 
        end

        it 'using be' do
             result  = 1.to_s
            result2 = result
            expect(result).to be(result2) 
        end

    end

    context "eq / eql to compare value" do

        it 'using eq' do
            result  = 1.to_s
            result2 = 1.to_s
            expect(result).to eq(result2) 
        end

        it 'using eql' do
            result  = 1.to_s
            result2 = 1.to_s
            expect(result).to eql(result2) 
        end
    end
    
end 