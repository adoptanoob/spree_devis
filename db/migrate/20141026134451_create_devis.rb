class CreateDevis < ActiveRecord::Migration
  def change
      add_column :devis, :name, :string
      t.string :devis, :plan_url, :string

      t.timestamps
    end
  end
end
