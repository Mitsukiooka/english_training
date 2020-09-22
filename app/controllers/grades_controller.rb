class GradesController < ApplicationController
  def index
  end

  def show
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

end
