class AddCodeToUrls < ActiveRecord::Migration[5.0]
  def change
    add_column :urls, :code, :string
  end
end
