class Dimension
    def initialize(name)
        @Name = name
        @LeftSideValue = 0
        @RightSideValue = 0
    end
    
    attr_accessor :Name
    
    def getResult
        return @LeftSideValue*-1 >= @RightSideValue ? @Name[0] : @Name[1]
    end

    def UpdateLeftSideValue
        @LeftSideValue += -1;
    end

    def UpdateRightSideValue
        @RightSideValue += 1;
    end
end