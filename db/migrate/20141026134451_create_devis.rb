class CreateDevis < ActiveRecord::Migration
  def change
    create_table :devis do |t|
      t.string :name
      t.string :plan_url

      t.timestamps
    end
  end
end
