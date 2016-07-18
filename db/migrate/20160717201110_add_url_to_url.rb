class AddUrlToUrl < ActiveRecord::Migration[5.0]
  def change
    add_column :urls, :url, :string
  end
end
