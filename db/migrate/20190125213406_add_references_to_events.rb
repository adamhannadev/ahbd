class AddReferencesToEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :bookable, polymorphic: true, index: true
  end
end
