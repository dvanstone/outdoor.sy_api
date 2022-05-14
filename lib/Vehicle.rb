class Vehicle

    # def type=(value)
    #     @type = value
    # end
    # def name=(value)
    #     @name = value
    # end
    # def length=(value)
    #     @length = value
    # end

    attr_reader :type, :name, :length

    def initialize(type, name, length)
        @type = type
        @name = name
        @length = length
    end

    def ==(other)
        self.type == other.type && self.name == other.name && self.length == other.length
    end

end