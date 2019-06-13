class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :destroy, :update] 
  # GET /schools - index
  def index
    @schools = School.all
  end

  # GET /schools/1 - show
  def show
  end

  # GET /schools/new - new
  def new
    @school = School.new
    render partial: "form" # create _form.html.erb in views
  end
  # GET /schools/edit - edit
  def edit
    render partial: "form"
  end

  # POST /schools - create
  def create
    @school = School.new(school_params)

    if @school.save
      redirect_to @school
    else
      render :new
    end
  end

  # DELETE /schools - destroy
  def destroy
    @school.destroy
    redirect_to schools_path
  end

  def update
    if @school.update(school_params)
      redirect_to @school
    else
      render :edit
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
  def set_school
    @school = School.find(params[:id])
  end

  def school_params
    params.require(:school).permit(:name, :address, :principal, :capacity, :private_school)
  end
    # Only allow a trusted parameter "white list" through.

end
