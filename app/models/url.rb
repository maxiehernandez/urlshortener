class Url < ApplicationRecord
  def self.ran_string
    (0...8).map { (65 + rand(26)).chr }.join
  end
end
