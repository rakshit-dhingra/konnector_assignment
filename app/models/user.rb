class User < ApplicationRecord

  # validate :check_campaigns_list

  # serialize :campaigns_list, Array


  def check_campaigns_list
    self.errors.add(:campaigns_list, "is not an Array") unless YAML.load(self.campaigns_list).is_a?(Array)
  end
end
