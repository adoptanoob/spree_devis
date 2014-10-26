class Devi < ActiveRecord::Base
  before_create :default_name

  def default_name
    self.name ||= File.basename(devi_url, '.*').titleize if devi_url
  end
end
