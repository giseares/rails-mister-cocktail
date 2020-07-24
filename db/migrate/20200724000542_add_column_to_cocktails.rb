class AddColumnToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :banner_url, :string
  end
end
