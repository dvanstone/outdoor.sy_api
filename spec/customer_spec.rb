require "Customer"

describe Customer do

    describe ".createFromString" do
        context "given empty string" do
            it "returns empty string" do
                expect(Customer.createFromString("")).to eql("")
            end
        end
    end

end