class StudentsController < ApplicationController
  # before_action :set_student, only: :show
  
  def index
    @students = Student.all
  # binding.pry
  end

  def new

  end


  def show
    set_student
    
  end

  def activate
    set_student
    @student.active = !@student.active
    # if @student.active 
    #   !@student.active
    # elsif !@student.active 
    #   @student.active
    # end
    @student.save 
    redirect_to student_path(@student)
  end



  private

    def set_student
      @student = Student.find(params[:id])
    end

end