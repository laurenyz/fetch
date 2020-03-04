class AddPasswordDigestToPetxperts < ActiveRecord::Migration[6.0]
  def change
    add_column :petxperts, :password_digest, :string
  end
end
