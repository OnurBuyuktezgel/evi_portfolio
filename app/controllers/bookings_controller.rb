class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]
  before_action :set_lecture_id, only: [:show, :new, :create]

  def index
    @user = current_user
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def show
    @user = current_user
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.lecture = @lecture

    @user = current_user
    @booking.user = @user

    if @booking.save
      redirect_to lecture_booking_path(@lecture, @booking)
    else
      render new
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to lecture_booking_path(@lecture, @booking)
  end

  def destroy
    @lecture = @booking.lecture
    @booking.destroy
    redirect_to "/lectures/:lecture_id/bookings"
  end

  private

  def set_lecture_id
    @lecture = Lecture.find(params[:lecture_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:desired_time, :message, :status)
  end
end
