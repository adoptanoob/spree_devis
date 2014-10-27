class DevisController < ApplicationController
  def index
  end

  def new
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: 201, acl: :public_read)
    @devi = Devi.new
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def detroy
  end
end
