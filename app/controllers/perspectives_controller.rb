require 'DimensionsCalculator'

class PerspectivesController < ApplicationController
    def new
        @Questions = Question.all

        @Perspective = Perspective.new
    end
    
    def all
        @Perspectives = Perspective.all
    end
    
    def create
        #@Perspective = Perspective.new(perspective_params)
        @answers = "";
        
        for i in 1..10
            @answers << params["question#{i}"] if !params["question#{i}"].nil?
        end
        
        @Perspective = Perspective.new(email: params[:user_email], answers: @answers)
        
        if(@answers.length < 10 || params[:user_email].strip == "")
            flash[:alert] = "Please answer all of the questions below"
            redirect_to :action => :new and return
        end
        
        begin
        if @Perspective.save
            redirect_to :action => 'results', perspective: @answers
        else
            flash[:alert] = "Hmm, an unknown error occured, let us work on it and try again in a bit"
            render :action => 'new'
        end
        rescue ActiveRecord::RecordNotUnique
        flash[:alert] = "The email address you entered has already been taken"
        redirect_to :action => :new
        end
    end
    
    def results
        @Perspective = params[:perspective]
        @DimensionsCalculator = DimensionsCalculator.new
        @result = @DimensionsCalculator.calculate(@Perspective)
    end

    def perspective_params
        params.require(:perspectives).permit(:email, :answers)
    end
end
