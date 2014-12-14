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
    s3_path = params[:url]
    doc_name = params[:name]
    @devi = Devi.new(:url => s3_path, :name => doc_name)

      if @devi.save
        render :json => {
          :success => true,
          :devi => @devi
        }
      else
        render :json {
          :success => false,
          :message => "Une erreur est survenue,VAB"
        }
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
