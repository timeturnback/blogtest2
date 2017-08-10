class StudentsController < ApplicationController
	def new
	end

 def index
    @student = Student.all
  end

	
def create
  @student = Student.new(student_params)
 
  @student.save
  redirect_to @student
end  

def show
    @student = Student.find(params[:id])
  end
 
private
  def student_params
    params.require(:student).permit(:name, :class_name)
  end



end
