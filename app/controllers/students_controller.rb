class StudentsController < ApplicationController

        def index
            students = Student.all
            render json: students , status: :ok
        end

        def grades
            grades = Student.all.order(:grade).reverse
            render json: grades
        end

        def highest_grade
            highest_grade = Student.all.max_by do |x| x.grade 
            end
            render json: " Student: #{highest_grade.first_name} #{highest_grade.last_name} grade: #{highest_grade.grade}"
        end
        
end
