class DevisController < ApplicationController
  def index
    @devis = Devi.all
  end

  def new
    @devi = Devi.new
  end

  def show
  end

  def create
    @devi = Devi.new(devi_params)

      if @devi.save
        redirect_to @devi, notice: 'The devi was successfully created.'
      else
        render :new
      end
  end

  def edit
  end

  def update
  end

  def detroy
  end

    private

    def devi_params
      params.require(:devi).permit(:name, :plan_url)
    end
end
