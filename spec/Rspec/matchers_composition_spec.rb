describe 'Ruby on Rails' do

    it {is_expected.to start_with("Ruby").and end_with("Rails")} 
    it {expect(fruit).to eq("strawberry").or eq("kiwi").or eq("apple")} 

    def fruit
        %w(strawberry apple kiwi).sample
    end

end