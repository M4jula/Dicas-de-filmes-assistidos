class CreateDicas < ActiveRecord::Migration[7.0]
  def change
    create_table :dicas do |t|
      t.string :titulo
      t.string :genero
      t.text :descricao
      t.string :nota

      t.timestamps
    end
  end
end
