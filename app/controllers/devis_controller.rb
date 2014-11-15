class DevisController < ApplicationController
  def index
    @devis = Devi.all
  end

  def new
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: 201, acl: :public_read)
    @devi = Devi.new
  end

  def show
  end

  def create
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: 201, acl: :public_read)
    @devi = Devi.new(devi_params)

    respond_to do |format|
      if @devi.save
        format.html { redirect_to @devi, notice: 'The devi was successfully created.' }
        format.json { render :show, status: :created, location: @devi }
      else
        format.html { render :new }
        format.json { render json: @devi.errors, status: :unprocessable_entity }
      end
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
