describe "Match Range" do

    context "Ranges and conteined in" do

        it 'between' do

            expect(1).to be_between(0,5)

        end

        it 'between inclusive' do

            expect(0).to be_between(0,5).inclusive

        end

        it 'between exclusive' do

            expect(1).to be_between(0,5).exclusive

        end

        it 'start with' do

            expect("single").to start_with("sin")

        end

        it 'end with' do

            expect([1,2,4,5,6]).to end_with(6)

        end

        it 'Regular Expression' do 

            expect('michel@michel.com').to  match(/\w+@+\w+\.+(\w{3})+\w*/)
            
        end

        it 'Cover ranger' do 

            expect((1..6)).to cover(5)
            expect((1..6)).to cover(1,6)
            expect((1..6)).not_to cover(7)

        end

    end

end