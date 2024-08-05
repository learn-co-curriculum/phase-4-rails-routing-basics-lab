class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    students_by_grade = Student.all.order(grade: :desc)
    render json: students_by_grade
  end
end
