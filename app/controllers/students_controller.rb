class StudentsController < ApplicationController
    def index 
        students = Student.all
        render json: students
    end 

    def grades 
        student_order = Student.order(grade: :desc)
        render json: student_order
    end

    def highest_grade
        a_students = Student.order(grade: :desc).first
        render json: a_students
    end
end
