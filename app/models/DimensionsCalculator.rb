require 'Dimension'
class DimensionsCalculator
    
    
    def initialize
        @EI = Dimension.new("EI", "Extraversion (E)", "Introversion (I)", false);
        @SN = Dimension.new("SN", "Sensing (S)", "Intuition (N)", true);
        @TF = Dimension.new("TF", "Thinking (T)", "Feeling (F)", true);
        @JP = Dimension.new("JP", "Judging (J)", "Perceiving (P)", true); 
    end
    
    def getDimensions
        @AllDimensions = Array.new
        @AllDimensions << @EI
        @AllDimensions << @SN
        @AllDimensions << @TF
        @AllDimensions << @JP

        return @AllDimensions
    end
    
    def calculate(answers)
        for i in 0..answers.length
            case i
            
            when 0
                if(answers[i].to_i > 4)
                        @EI.UpdateRightSideValue;
                    elsif answers[i].to_i < 4
                        @EI.UpdateLeftSideValue
                end
             when 1
                if(answers[i].to_i > 4)
                        @SN.UpdateLeftSideValue
                    elsif answers[i].to_i < 4
                        @SN.UpdateRightSideValue
                end
            when 2      
                if(answers[i].to_i > 4)
                        @TF.UpdateRightSideValue
                    elsif answers[i].to_i < 4
                        @TF.UpdateLeftSideValue
                end
             when 3
                if(answers[i].to_i > 4)
                        @EI.UpdateLeftSideValue
                    elsif answers[i].to_i < 4
                        @EI.UpdateRightSideValue        
                end
             when 4
                if(answers[i].to_i > 4)
                        @SN.UpdateRightSideValue
                    elsif answers[i].to_i < 4
                        @SN.UpdateLeftSideValue            
                end
             when 5
                if(answers[i].to_i > 4)
                        @JP.UpdateRightSideValue
                    elsif answers[i].to_i < 4
                        @JP.UpdateLeftSideValue            
                end
             when 6
                if(answers[i].to_i > 4)
                        @TF.UpdateLeftSideValue
                    elsif answers[i].to_i < 4
                        @TF.UpdateRightSideValue            
                end
             when 7
                if(answers[i].to_i > 4)
                        @JP.UpdateLeftSideValue
                    elsif answers[i].to_i < 4
                        @JP.UpdateRightSideValue          
                end
             when 8
                if(answers[i].to_i > 4)
                        @EI.UpdateLeftSideValue
                    elsif answers[i].to_i < 4
                        @EI.UpdateRightSideValue            
                end
             when 9
                if(answers[i].to_i > 4)
                        @JP.UpdateRightSideValue
                    elsif answers[i].to_i < 4
                        @JP.UpdateLeftSideValue
                end
            end
        end
        return @EI.getResult+@SN.getResult+@TF.getResult+@JP.getResult
    end
end