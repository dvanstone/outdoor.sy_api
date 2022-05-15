class Api::V1::CustomerController < ApplicationController

    require "Customer"

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
            render json: returnArray, status: 200
        else
            render json: "Improperly formatted file", status: 400
        end
    end

end
