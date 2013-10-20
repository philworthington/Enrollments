class ClassesController < ApplicationController

  def index
    @classes = Class.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @classes }
    end
  end


  def show
    @class = Class.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @class }
    end
  end


  def new
    @class = Class.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @class }
    end
  end


  def edit
    @class = Class.find(params[:id])
  end


  def create
    @class = Class.new(params[:class])

    respond_to do |format|
      if @class.save
        format.html { redirect_to @class, notice: 'class was successfully created.' }
        format.json { render json: @class, status: :created, location: @class }
      else
        format.html { render action: "new" }
        format.json { render json: @class.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @class = Class.find(params[:id])

    respond_to do |format|
      if @class.update_attributes(params[:class])
        format.html { redirect_to @class, notice: 'class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @class.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @class = Class.find(params[:id])
    @class.destroy

    respond_to do |format|
      format.html { redirect_to classes_url }
      format.json { head :no_content }
    end
  end
end
