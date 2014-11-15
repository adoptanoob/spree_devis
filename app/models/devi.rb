class Devi < ActiveRecord::Base
  attr_accessor :plan_url
  before_create :default_name

  def default_name
    self.name ||= File.basename(plan_url, '.*').titleize if plan_url
  end
end
