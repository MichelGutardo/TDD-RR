describe "Predicates" do
    it 'odd' do
        expect(1).to be_odd
    end

    it 'even' do
        expect(2).to be_even
    end

    it 'nil' do
        null = nil
        expect(null).to be_nil
    end

    it 'zero' do
        value = 0
        expect(value).to be_zero
    end

    it 'empty' do
        empty_string = ""
        expect(empty_string).to be_empty
    end
end