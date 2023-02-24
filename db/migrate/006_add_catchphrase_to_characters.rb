class AddCatchphraseToCharacters < ActiveRecord::Migration[6.1]
  def change
    # add_column :table_name, column_name, data_type
    add_column :characters, :catchphrase, :string    
  end
end
