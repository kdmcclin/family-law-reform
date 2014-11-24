class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
    	t.string :state, null: false
    	t.string :person, null: false
    	t.text :content, null: false
    	t.belongs_to :user
    	
    	t.timestamps
    end
  end
end
