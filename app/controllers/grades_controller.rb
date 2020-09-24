class GradesController < ApplicationController
  def index
    @grades = Grade.all
  end

  def show
    @grade = Grade.find(params[:id])
  end

  def new
    @grade = Grade.new
  end

  def create
    @grade = Grade.new(grade_params)
    if @grade.save
      redirect_to grades_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private
  def grade_params
    params[:grade].permit(:test_type, :total_score, :listening_score, :reading_score, :speaking_score,
      :writing_score)
  end

end
