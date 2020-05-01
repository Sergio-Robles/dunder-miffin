class DogsController < ApplicationController

    def index 
        @dogs = Dog.all
    end

    def show 
        @dog = Dog.find(params[:id])
    end

    def adoption 
        @dogs = Dog.up_for_adoption
        render 'index'
    end

    def adopt_form 
        @dog = Dog.find(params[:id])
        @employees = Employee.all
    end

    def adopt 
        employee = Employee.find(params[:dog][:employee])
        employee.update(dog_id: params[:id])
    end


end
