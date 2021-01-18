class CreateKycDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :kyc_details do |t|
      t.string :id_proof
      t.string :address_proof
      t.integer :user_id
      t.timestamps
    end
  end
end
