class SchedulersController < ApplicationController
  before_action :set_scheduler, only: [:show, :edit, :update, :destroy]

  # GET /schedulers
  # GET /schedulers.json
  def index
    @schedulers = current_user.schedulers.all
  end

  # GET /schedulers/1
  # GET /schedulers/1.json
  def show
  end

  # GET /schedulers/new
  def new
    @scheduler = current_user.schedulers.new
  end

  # GET /schedulers/1/edit
  def edit
  end

  # POST /schedulers
  # POST /schedulers.json
  def create
    @scheduler = current_user.schedulers.new(scheduler_params)

    respond_to do |format|
      if @scheduler.save
        format.html { redirect_to schedulers_url, notice: 'Scheduler was successfully created.' }
        format.json { render :show, status: :created, location: @scheduler }
      else
        format.html { render :new, notice: @scheduler.errors }
        format.json { render json: @scheduler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedulers/1
  # PATCH/PUT /schedulers/1.json
  def update
    respond_to do |format|
      if @scheduler.update(scheduler_params)
        format.html { redirect_to schedulers_url, notice: 'Scheduler was successfully updated.' }
        format.json { render :show, status: :ok, location: @scheduler }
      else
        format.html { render :edit, notice: @scheduler.errors }
        format.json { render json: @scheduler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedulers/1
  # DELETE /schedulers/1.json
  def destroy
    respond_to do |format|
      if !Event.find_by(:scheduler_id => @scheduler.id)
        @scheduler.destroy
        format.html { redirect_to schedulers_url, notice: 'Scheduler was successfully deleted' }
        format.json { head :no_content }
      else
        format.html { redirect_to schedulers_url, 
          notice: "Scheduler can't be deleted because the scheduler is assigned to events" }
        format.json { render json: @scheduler.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scheduler
      @scheduler = current_user.schedulers.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scheduler_params
      params.require(:scheduler).permit(:name, :color_id, :user_id)
    end
end
