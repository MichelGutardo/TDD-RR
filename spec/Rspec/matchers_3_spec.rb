describe "Third way to compare" do 
    
    context "Locagical operators" do

        it 'greater then' do

            expect(1).to be > 0

        end

        it 'greater then or equal' do

            expect(1).to be >= 1

        end

        it 'less then' do

            expect(1).to be < 2

        end

        it 'less then or equal' do

            expect(1).to be <= 1

        end

    end

end