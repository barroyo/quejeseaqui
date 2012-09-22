class ComplaintsController < ApplicationController
  # GET /complaints
  # GET /complaints.json
  def index
    @complaints = Complaint.all

    render json: @complaints
  end

  # GET /complaints/1
  # GET /complaints/1.json
  def show
    @complaint = Complaint.find(params[:id])

    render json: @complaint
  end

  # GET /complaints/new
  # GET /complaints/new.json
  def new
    @complaint = Complaint.new

    render json: @complaint
  end

  # POST /complaints
  # POST /complaints.json
  def create
    @complaint = Complaint.new(params[:complaint])

    if @complaint.save
      render json: @complaint, status: :created, location: @complaint
    else
      render json: @complaint.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /complaints/1
  # PATCH/PUT /complaints/1.json
  def update
    @complaint = Complaint.find(params[:id])

    if @complaint.update_attributes(params[:complaint])
      head :no_content
    else
      render json: @complaint.errors, status: :unprocessable_entity
    end
  end

  # DELETE /complaints/1
  # DELETE /complaints/1.json
  def destroy
    @complaint = Complaint.find(params[:id])
    @complaint.destroy

    head :no_content
  end
end
