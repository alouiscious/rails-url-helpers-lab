class StudentsController < ApplicationController
  # before_action :set_student, only: :show
  
  def index
    @students = Student.all
  # binding.pry
  end


  def show
    Student.create(params[:students])
    set_student

  end

  def activate
    set_student
    if @student.active 
      !@student.active
    elsif !@student.active 
      @student.active
    end
    @student.save 
    redirect_to student_path(@student)
  end



  private

    def set_student
      @student = Student.find(params[:id])
    end

end