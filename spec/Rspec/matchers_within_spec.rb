describe 'be_within' do

    it{expect(11.5).to be_within(0.5).of(12)}

end

describe 'be_within + all' do

    it{expect([12.4,11.7,12.4]).to all (be_within(0.5).of(12))}

end