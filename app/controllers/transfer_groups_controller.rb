class TransferGroupsController < ApplicationController
  before_action :set_transfer_group, only: [:show, :edit, :update, :destroy]

  # GET /transfer_groups
  # GET /transfer_groups.json
  def index
    @transfer_groups = TransferGroup.all
  end

  # GET /transfer_groups/1
  # GET /transfer_groups/1.json
  def show
  end

  # GET /transfer_groups/new
  def new
    @transfer_group = TransferGroup.new
  end

  # GET /transfer_groups/1/edit
  def edit
  end

  # POST /transfer_groups
  # POST /transfer_groups.json
  def create
    @transfer_group = TransferGroup.new(transfer_group_params)
    @transfer_group.user_id = current_user.id

    respond_to do |format|
      if @transfer_group.save
        format.html { redirect_to @transfer_group, notice: 'Transfer group was successfully created.' }
        format.json { render :show, status: :created, location: @transfer_group }
      else
        format.html { render :new }
        format.json { render json: @transfer_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transfer_groups/1
  # PATCH/PUT /transfer_groups/1.json
  def update
    respond_to do |format|
      if @transfer_group.update(transfer_group_params)
        format.html { redirect_to @transfer_group, notice: 'Transfer group was successfully updated.' }
        format.json { render :show, status: :ok, location: @transfer_group }
      else
        format.html { render :edit }
        format.json { render json: @transfer_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transfer_groups/1
  # DELETE /transfer_groups/1.json
  def destroy
    @transfer_group.destroy
    respond_to do |format|
      format.html { redirect_to transfer_groups_url, notice: 'Transfer group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transfer_group
      @transfer_group = TransferGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transfer_group_params
      params.require(:transfer_group).permit(:place, :user_id)
    end
end
