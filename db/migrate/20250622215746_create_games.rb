class CreateGames < ActiveRecord::Migration[8.0]
  def change
    create_table :games do |t|
      t.string :title, null: false
      t.boolean :has_multiplayer, null: true, default: nil
      t.boolean :cut_scenes_pausable, null: true, default: nil
      t.text :cut_scenes_pausable_remark
      t.boolean :quick_resume_usable, null: true, default: nil
      t.text :quick_resume_remark
      t.boolean :game_pausable, null: true, default: nil
      t.text :game_pausable_remark
      t.boolean :quick_save_possible, null: true, default: nil
      t.text :quick_save_remark
      t.boolean :mp_drop_out_penalty, null: true, default: nil
      t.text :mp_drop_out_penalty_remark
      t.text :game_content_remark

      t.timestamps
      t.index :title, unique: true
    end
  end
end
