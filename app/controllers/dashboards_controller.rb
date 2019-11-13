class DashboardsController < ApplicationController
   def my_dashboard
    @my_coders = current_user.coders
    @my_past_bookings = Booking.where(user: current_user).where('date < ?', Date.today)
    @my_current_bookings = Booking.where(user: current_user).where('date >= ?', Date.today)
    @my_coders_past_bookings = Booking.joins(:coder).where(coders: { user: current_user }).where('date < ?', Date.today)
    @my_coders_current_bookings = Booking.joins(:coder).where(coders: { user: current_user }).where('date >= ?', Date.today)
  end
end
