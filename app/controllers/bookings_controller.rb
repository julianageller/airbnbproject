class BookingsController < ApplicationController
    def new
    @booking = Booking.new
  end

  def edit
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.coder = Coder.find(params[:coder_id])
    if @booking.save
      redirect_to edit_booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking.destroy

    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:title, :description, :location, :date, :duration)
  end
end
end
