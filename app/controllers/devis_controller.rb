class DevisController < ApplicationController
  def index
    @devis = Devi.all
  end

  def show
    @devi = Devi.find(params[:id])
  end

  def new
    @devi = Devi.new
  end

  def create
    @devi = Devi.create(devi_params)
  end

  def edit
    @devi = Devi.find(params[:id])
  end

  def update
    @devi = Devi.find(params[:id])
    if @devi.update_attributes(devi_params)
      redirect_to devis_url, notice: 'Devi was successfully created'
    else
      render :edit 
    end
  end

  def destroy
    @devi = Devi.find(params[:id])
    @devi.destroy
    redirect_to devis_url, notice: 'Devi was successfully deleted'
  end

  private
    def devi_params
      params.require(:devi).permit(:plan_url, :name)
      
    end
end
