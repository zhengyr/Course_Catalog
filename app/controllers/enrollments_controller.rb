class EnrollmentsController < ApplicationController
  def index
    
  end

  def create
    @enro = Enrollment.new
    @enro.user_id = params[:user_id]
    @enro.course_id = params[:course_id]
    respond_to do |format|
      if @enro.save
        format.html { redirect_to root_url, notice: "Finished Enrollment" }
        format.json { render json: @enro, status: :created, location: @enro }
      else
        format.html { redirect_to root_url, notice: "Failed Enrollment" }
        format.json { render json: @enro.errors, status: :unprocessable_entity }
      end
    end
  end
end
