class Pessoa
    attr_accessor :name, :age

    def YearBirth()
        Time.new.year - age     
    end
end