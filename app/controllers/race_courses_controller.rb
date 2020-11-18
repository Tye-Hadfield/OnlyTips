class RaceCoursesController < ApplicationController
  before_action :check_role
  before_action :set_race_course, only: [:show, :edit, :update, :destroy]

  # GET /race_courses
  # GET /race_courses.json
  def index
    @race_courses = RaceCourse.all
  end

  # GET /race_courses/1
  # GET /race_courses/1.json
  def show
  end

  # GET /race_courses/new
  def new
    @race_course = RaceCourse.new
  end

  # GET /race_courses/1/edit
  def edit
  end

  # POST /race_courses
  # POST /race_courses.json
  def create
    @race_course = RaceCourse.new(race_course_params)

    respond_to do |format|
      if @race_course.save
        format.html { redirect_to @race_course, notice: 'Race course was successfully created.' }
        format.json { render :show, status: :created, location: @race_course }
      else
        format.html { render :new }
        format.json { render json: @race_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /race_courses/1
  # PATCH/PUT /race_courses/1.json
  def update
    respond_to do |format|
      if @race_course.update(race_course_params)
        format.html { redirect_to @race_course, notice: 'Race course was successfully updated.' }
        format.json { render :show, status: :ok, location: @race_course }
      else
        format.html { render :edit }
        format.json { render json: @race_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /race_courses/1
  # DELETE /race_courses/1.json
  def destroy
    @race_course.destroy
    respond_to do |format|
      format.html { redirect_to race_courses_url, notice: 'Race course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def check_role

    if current_user.has_role? :admin

    else

      render 'partials/_wrongrole'
      
    end

  end



    # Use callbacks to share common setup or constraints between actions.
    def set_race_course
      @race_course = RaceCourse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def race_course_params
      params.require(:race_course).permit(:race_course_name, :address)
    end
end
