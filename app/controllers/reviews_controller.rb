class ReviewsController < ApplicationController

   http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
   
	 def create
    @student = Student.find(params[:student_id])
    @review = @student.reviews.create(review_params)
    redirect_to student_path(@student)
  end

 

  def destroy
    @student = Student.find(params[:student_id])
    @student = @student.reviews.find(params[:id])
    @student.destroy
    redirect_to student_path(@student)
  end

  private
    def review_params
      params.require(:review).permit(:reviewer, :body)
    end
end
