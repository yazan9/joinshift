class Dimension
    def initialize(name, lowerValue, higherValue, order)
        @Name = name
        @LeftSideValue = 0
        @RightSideValue = 0
        @LowerValue = lowerValue
        @HigherValue = higherValue
        if(order == true)
            @LabelLeft = lowerValue
            @LabelRight = higherValue
        else
            @LabelLeft = higherValue
            @LabelRight = lowerValue
        end
    end
    
    attr_accessor :Name
    attr_accessor :LowerValue
    attr_accessor :HigherValue
    attr_accessor :LabelLeft
    attr_accessor :LabelRight
    
    def getResult
        return @LeftSideValue*-1 >= @RightSideValue ? @Name[0] : @Name[1]
    end
    
    def lean
        return @LeftSideValue*-1 >= @RightSideValue ?  @LowerValue : @HigherValue
    end

    def UpdateLeftSideValue
        @LeftSideValue += -1;
    end

    def UpdateRightSideValue
        @RightSideValue += 1;
    end
end