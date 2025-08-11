class StudentsController < ApplicationController
  def index 
    render json: Student.all 
  end
end
