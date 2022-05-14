require "Customer"

describe Customer do

    describe ".createFromEmptyString" do
        context "given empty string" do
            it "returns empty string" do
                expect(Customer.createFromString("")).to eql("")
            end
        end
    end

    describe ".createFromAcceptableCommaDelimiterString" do
        context "given string with all information required for customer object" do
            it "returns Customer object" do
                expectedVehicle = Vehicle.new("sailboat", "Fridays For Future", "32")
                expectedCustomer = Customer.new("Greta Thunberg", "greta@future.com", expectedVehicle)

                expect(Customer.createFromString("Greta,Thunberg,greta@future.com,sailboat,Fridays For Future,32") == expectedCustomer)
            end
        end
    end

    describe ".createFromAcceptablePipeDelimiterString" do
        context "given string with all information required for customer object" do
            it "returns Customer object" do
                expectedVehicle = Vehicle.new("sailboat", "Fridays For Future", "32")
                expectedCustomer = Customer.new("Greta Thunberg", "greta@future.com", expectedVehicle)

                expect(Customer.createFromString("Greta|Thunberg|greta@future.com|sailboat|Fridays For Future|32") == expectedCustomer)
            end
        end
    end

end