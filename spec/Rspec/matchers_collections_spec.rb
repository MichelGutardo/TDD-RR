describe 'all' do

    it{ expect([1,3,5]).to all( (be_odd).and be_an(Integer) )}
    it{ expect(['ruby','rails']).to all( be_a(String).and include('r') )}
  
end