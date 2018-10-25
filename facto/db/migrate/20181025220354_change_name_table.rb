class ChangeNameTable < ActiveRecord::Migration[5.2]
  def change
    rename_table "assemblies_and_parts", "assemblies_parts"
  end
end
