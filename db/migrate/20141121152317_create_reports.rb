class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
    	t.string :state
    	t.string :person
    	t.text :content
    	t.belongs_to :user
    	
    	t.timestamps
    end
  end
end
