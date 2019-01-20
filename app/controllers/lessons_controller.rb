class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :ensure_admin!
  
  # GET /lessons
  # GET /lessons.json
  def index
    @lessons = Lesson.all
    # @lessons = Lesson.this_years_lessons.order(lesson_date: :desc)
    # Scope for weekly lessons. 
    # @lessons = Lesson.where(:lesson_date => Date.current.beginning_of_week..Date.current.end_of_week).order(lesson_date: :desc)
  end
  
  def calendar
    @lessons = Lesson.all
    @recurring_lessons = @lessons.flat_map{|e| e.recurring_lessons(params.fetch(:start_time, Time.zone.now).to_date)}
  end
  
  # GET /lessons/1
  # GET /lessons/1.json
  def show
  end

  # GET /lessons/new
  def new
    
    @lesson = Lesson.new(:student_id => params[:student_id], :lesson_date => params[:lesson_date])
    respond_to do |format|
    format.html
    format.js
    end
  end

  # GET /lessons/1/edit
  def edit
    @prevLesson= Lesson.where(:student_id => @lesson.student_id).where("lesson_date < ?", @lesson.lesson_date).last
    @payments = Payment.all
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @lesson = Lesson.new

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
      params.require(:lesson).permit(:student_id, :lesson_date, :plan, :package_id, :payment_id, :recurring)
    end
end
