class StudentController < ApplicationController

  def index
    @students = Student.all.order(:name)

    respond_to do |format|
      format.html { render :index }
      format.json { render json: @students }
  end

  def show
  end

  def create
    @Student = Student.new(student_params)

    if @student.save
      render json: @student
    else
      render status: 400, nothing: true
    end
  end

  def update
    @student = Student.find(params[:id])

    if @student.update(student_params)
      render json: @student
    else
      render status: 400, nothing: true
    end
  end

  def destroy
    @student = Student.find(params[:id])

    if @student.destroy
      render json:{}
    else
      render status: 400, nothing: true
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :email, :location, :employment)
  end

end
