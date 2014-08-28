class DeleteExistingUserTableFromProduction < ActiveRecord::Migration
  def change
  	drop_table :users do |t|
  		t.string :username
      	t.string :email
     	t.date :dob
     	t.string :gender

      	t.timestamps
  	end
  end
end
