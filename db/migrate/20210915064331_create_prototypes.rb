class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|

      t.timestamps
      t.string     :title,      
      t.text       :catch_copy,  
      t.text       :concept,     
      t.references :user,       null: false, foreign_key: true
    end
  end
end
