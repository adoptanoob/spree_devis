class CreateDevis < ActiveRecord::Migration
  def change
      add_column :devis, :name, :string
      add_column :devis, :plan_url, :string

      t.timestamps
    end
  end
end
