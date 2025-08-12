class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    grades = Student.order(grade: :desc)
    render json: grades
  end

  def highest_grade
    student = Student.order(grade: :desc).first
    render json: student
  end
end
