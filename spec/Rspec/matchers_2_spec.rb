describe "Second way to compare" do 

    context "be true /be_truthy / be false / be_falsey / be_nil to compare" do

        it 'using be true' do

            expect(1.odd?).to be true

        end

        it 'using be_truthy' do

            expect(1.odd?).to be_truthy

        end

        it 'using be false' do

            expect(1.even?).to be false

        end

        it 'using be_falsey' do

            expect(1.even?).to be_falsey

        end

        it 'using be nil' do

            expect(defined? var ).to be_nil

        end

    end

end


