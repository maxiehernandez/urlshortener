class Url < ApplicationRecord
  def ran_string
    ran = ((0...8).map { (65 + rand(26)).chr }.join)
    self.code = ran
  end
end
