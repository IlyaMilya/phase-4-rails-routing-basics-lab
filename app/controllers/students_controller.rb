class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students
    end

    def grades 
       grade = Student.order("grade DESC")
        render json: grade 
    end

    def highest_grade
        highest = Student.order("grade DESC").first
        render json: highest
    end
end
