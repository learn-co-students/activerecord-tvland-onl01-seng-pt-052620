class Network < ActiveRecord::Base
  has_many :shows, class_name: "Show", foreign_key: "network_id",
  primary_key: "id"

  def sorry
    "We're sorry about passing on John Mulaney's pilot"
  end
end
