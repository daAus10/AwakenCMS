class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[ show edit update destroy ]
  before_action :authorize_user, only: [:edit, :update, :destroy]

  def authorize_user
      unless current_user
        render file: "#{Rails.root}/public/404.html", layout: false, status: :not_found
        # redirect_to root_path, alert: "You must be an editor to access this page."
      end
    end

  # PATCH /appointments/:id/assign_employee
  def assign_employee
    @appointment = Appointment.find(params[:id])
    employee = Employee.find(params[:employee_id])
    @appointment.employee = employee

    if @appointment.save
      redirect_to appointments_path, notice: "Appointment successfully assigned to the employee."
    else
      render :index, alert: "Failed to assign the appointment to the employee."
    end
  end

  # GET /appointments or /appointments.json
  # app/controllers/appointments_controller.rb

  def index
    if !current_user
      render file: "#{Rails.root}/public/404.html", layout: false, status: :not_found
    else
    @appointments = Appointment.includes(:orderables).all
    @employees = Employee.all
    @today_appointments = @appointments.select { |a| a.date.present? && a.date == Date.today }
    @upcoming_appointments = @appointments.select { |a| a.date.present? && a.date > Date.today }
    @past_appointments = @appointments.select { |a| a.date.present? && a.date < Date.today }
    end
  end


  # GET /appointments/1 or /appointments/1.json
  def show
    @orderables = @appointment.orderables
    # Restrict access to appointment details
    if !current_user
      flash[:alert] = "You must be an editor to access this page."
      redirect_to root_path
    end
  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new
    # @appointments = Appointment.pluck(:time1, :time2, :time3).flatten
    @appointments = Appointment.where("created_at >= ?", Time.zone.now.beginning_of_day).pluck(:time).flatten
    # @appointments = Appointment.where("created_at > ?", 24.hours.ago).pluck(:time1, :time2, :time3).flatten
    @appointments ||= []
  end

  # GET /appointments/1/edit
  def edit
    @taken_time_slots = Appointment.where("created_at >= ?", Time.zone.now.beginning_of_day).pluck(:time).flatten
    @taken_time_slots ||= []
  end

  # POST /appointments or /appointments.json
  def create
    @appointment = Appointment.new(appointment_params)

    respond_to do |format|
      if @appointment.save
        @kart.orderables.where(kart_id: @kart.id).update_all(appointment_id: @appointment.id, kart_id: nil)
        @appointment.orderables.create(kart: @kart)
        # @kart.orderables.update_all(appointment_id: @appointment.id, kart_id: nil)
        puts @appointment.orderables.inspect
        format.html { redirect_to appointment_url(@appointment), notice: "Appointment was successfully created." }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1 or /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to appointment_url(@appointment), notice: "Appointment was successfully updated." }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1 or /appointments/1.json
  def destroy
    @appointment.destroy

    respond_to do |format|
      format.html { redirect_to appointments_url, notice: "Appointment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appointment_params
      params.require(:appointment).permit(:name, :phone, :date, :email, :special_needs, :time, orderables_attributes: [:product_id, :quantity])
    end
end
