#### Embedded config helper
#require_relative '../helpers/composition'

#RSpec.configure do |conf|
    #conf.include Helper
#end

describe 'Ruby on Rails' do

    it {is_expected.to start_with("Ruby").and end_with("Rails")} 
    
end

describe 'Composition - helper method arbitrary' do

    it {expect(fruit).to eq("strawberry").or eq("kiwi").or eq("apple")} 

    def fruit #helper method arbitrary
        %w(strawberry apple kiwi).sample
    end

    
end


#Helper was defined in spec_helper
describe 'Ruby on Rails - helper method module' do

    it {expect(fruit_helper).to eq("strawberry").or eq("kiwi").or eq("apple")} 

end