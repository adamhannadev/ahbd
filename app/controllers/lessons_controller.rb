class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :ensure_admin!
  
  # GET /lessons
  # GET /lessons.json
  def index
    @lessons = Lesson.all.order(start_time: :desc)
    # @lessons = Lesson.this_years_lessons.order(start_time: :desc)
    # Scope for weekly lessons. 
    respond_to do |format|
      format.html
    format.xlsx {
    response.headers['Content-Disposition'] = 'attachment; filename="all_lessons.xlsx"'
  }
    end
  end
  
  # GET /lessons/1
  # GET /lessons/1.json
  def show
  end

  # GET /lessons/new
  def new
    @lesson = Lesson.new()
    respond_to do |format|
    format.html
    format.js
    end
  end

  # GET /lessons/1/edit
  def edit
    @prevLesson= Lesson.where(:student_id => @lesson.student_id).where("start_time < ?", @lesson.start_time).last
    @payments = Payment.all
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @lesson = Lesson.new(lesson_params)
    respond_to do |format|
      if @lesson.save
        format.html { redirect_to @lesson, notice: 'Lesson was successfully created.' }
        format.json { render :show, status: :created, location: @lesson }
      else
        format.html { render :new }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lessons/1
  # PATCH/PUT /lessons/1.json
  def update
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to @lesson, notice: 'Lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson }
      else
        format.html { render :edit }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to lessons_url, notice: 'Lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_params
      params.require(:lesson).permit(:student_id, :start_time, :plan, :package_id, :payment_id, :recurring)
    end
end
