class AddReferencesToDoses < ActiveRecord::Migration[6.0]
  def change
    add_reference :doses, :ingredient
    add_reference :doses, :cocktail
  end
end
