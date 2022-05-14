class Api::V1::CustomerController < ApplicationController

    # POST /api/v1/customer
    def create
            if params["customerFile"]
                file = File.open(params["customerFile"])
                returnArray = Array.new
                File.foreach(file) {
                    |line|
                    returnArray.push(Customer.createFromString(line))
                }
                file.close
            end
            render json: returnArray, status: 200
    end

    class Customer

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

    end

    class Vehicle

        attr_reader :type, :name, :length

        def initialize(type, name, length)
            @type = type
            @name = name
            @length = length
        end

    end

end
