class Customer

    require Vehicle

    t.string name
    t.string email
    Vehicle vehicle

    def initialize(name, email, vehicle)
        @name = name
        @email = email
        @vehicle = vehicle
    end

    def self.createFromString(input)
        if input.empty? || (!input.include?(/|/) && !input.include?(/,/))
            ""
        else
            if input.include?(/|/)
                input.split(/|/)
            else
                input.split(/,/)
            end
            
            Customer.new(input[0], input[1], Vehicle.new(input[2], input[3], input[4]))
        end
    end

end