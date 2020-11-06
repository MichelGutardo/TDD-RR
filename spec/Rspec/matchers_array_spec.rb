describe Array.new([1,2,3]),"Array" do

    it '#include' do
        
        expect(subject).to include(2)
        expect(subject).to include(1,3)
        
    end

    it '#Using Aggregate failure explicit' do
        aggregate_failures do
            expect(subject).to include(0)
            expect(subject).to include(6,4)
        end
    end

    it '#Using Aggregate failure implicit', :aggregate_failures do #it also works aggregate_failures: true
            expect(subject).to include(8)
            expect(subject).to include(3)
    end

    it '#contain_exactly' do

        expect(subject).to contain_exactly(3,1,2)
        
    end

    it '#match_array' do

        expect(subject).to match_array([1,2,3])
        
    end
  

end