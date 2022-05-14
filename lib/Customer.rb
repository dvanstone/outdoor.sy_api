class Customer

    # def name=(value)
    #     @name = value
    # end
    # def email=(value)
    #     @email = value
    # end
    # def vehicle=(value)
    #     @vehicle = value
    # end

    attr_reader :name, :email, :vehicle

    def initialize(name, email, vehicle)
        @name = name
        @email = email
        @vehicle = vehicle
    end

    def self.createFromString(input)
        if input.empty? || (!input.include?('|') && !input.include?(','))
            ""
        else
            if input.include?('|')
                customerInfo = input.split('|')
            else
                customerInfo = input.split(',')
            end
            
            Customer.new(customerInfo[0] +" "+ customerInfo[1], customerInfo[2], Vehicle.new(customerInfo[3], customerInfo[4], customerInfo[5]))
        end
    end

    def ==(other)
        self.name == other.name && self.email == other.email && self.vehicle == other.vehicle
    end

end