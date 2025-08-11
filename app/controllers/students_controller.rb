class StudentsController < ApplicationController
  def index 
    render json: Student.all 
  end

  def grades 
    render json: Student.all.order(grade: :desc)
  end

  def highest_grade 
    render json: Student.find_by(grade: Student.maximum('grade'))
  end
end
