class LecturesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_lecture, only: [:show, :destroy, :edit, :update]
  before_action :set_user, only: [:index, :new, :show, :edit, :update]

  def index
    @lectures = policy_scope(Lecture).order(created_at: :desc)
  end

  def new
    @lecture = Lecture.new
    authorize @lecture
  end

  def show
    @bookings = @lecture.bookings
    @booking = Booking.new
  end

  def create
    @lecture = Lecture.new(lecture_params)
    authorize @lecture
    @lecture.user = current_user
    if @lecture.save
      redirect_to lecture_path(@lecture)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @lecture.update(lecture_params)
    redirect_to lecture_path(@lecture)
  end

  def destroy
    @lecture.destroy
    redirect_to lectures_path
  end

  private

  def set_user
    @user = current_user
  end

  def set_lecture
    @lecture = Lecture.find(params[:id])
    authorize @lecture
  end

  def lecture_params
    params.require(:lecture).permit(:category, :price, :status, :title, :description, :start_at, :duration, :photo)
  end
end
