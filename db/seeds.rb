# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Clearing existing games..."
Game.destroy_all

puts "Creating games..."

Game.create!(
  title: "Assassin's Creed: Valhalla",
  cut_scenes_pausable: false,
  cut_scenes_pausable_remark: "Not pausable within the game, but switching to the console's system menu might keep the game on pause.",
  quick_resume_usable: false,
  quick_resume_remark: "At least on PS4 the game might result in system errors after resuming. This is regrettable because the game takes a long time to launch.",
  game_pausable: true,
  quick_save_possible: true,
  quick_save_remark: "Autosaves constantly",
  mp_drop_out_penalty: nil,
  mp_drop_out_penalty_remark: "The game's \"Avenge Quests\" systems is buggy and may cause issues on Resume. They can be turned off in settings."
)

Game.create!(
  title: "Disgaea 2 PC",
  cut_scenes_pausable: false,
  quick_resume_usable: nil,
  quick_resume_remark: "Not on consoles with quick resume functionality",
  game_pausable: true,
  quick_save_possible: false,
  quick_save_remark: "Only saveable in town. A substantial part of the game is \"Item World\" where the player needs to commit to finishing 10+ floors of a dungeon before being able to save. Item World can be exited only with a consumable item that can only be gained by completing 10 floors of Item World.",
  mp_drop_out_penalty: nil,
  game_content_remark: "A rather cutesy game but some of the character models are suggestive and much of the dialogue is peurile."
)

Game.create!(
  title: "Elden Ring",
  quick_resume_usable: true,
  game_pausable: false,
  game_pausable_remark: "It is possible to pause when playing solo by opening the menu and then pressing for help - the game is paused while the the help overlay is on screen",
  quick_save_possible: true,
  quick_save_remark: "Autosaves constantly",
  mp_drop_out_penalty: true,
  mp_drop_out_penalty_remark: "Loss of consumable item needed to interact with multiplayer"
)

Game.create!(
  title: "Earth Defense Force 4.1",
  cut_scenes_pausable: false,
  cut_scenes_pausable_remark: "Cut scenes are small and infrequent and it doesn't matter if they are missed.",
  quick_resume_usable: true,
  game_pausable: true,
  quick_save_possible: false,
  quick_save_remark: "Only saveable after fully completing missions.",
  mp_drop_out_penalty: true,
  mp_drop_out_penalty_remark: "Zero loot and progress if current mission is cut short or ends in failure."
)

Game.create!(
  title: "Earth Defense Force 5",
  cut_scenes_pausable: true,
  cut_scenes_pausable_remark: "Game has no cut scenes",
  quick_resume_usable: true,
  game_pausable: true,
  quick_save_possible: false,
  quick_save_remark: "Only saveable after fully completing missions.",
  mp_drop_out_penalty: true,
  mp_drop_out_penalty_remark: "Zero loot and progress if current mission is terminated. If you stop playing and the mission ends in failure, you will receive partial loot."
)

Game.create!(
  title: "Kingdom Come: Deliverance 2",
  cut_scenes_pausable: true,
  quick_resume_usable: true,
  quick_resume_remark: "Earlier versions had a bug on both PlayStation and XBox where the Lions Crest DLC was not correctly detected after resuming, which led to either playing the game without the DLC content or being locked out of existing save files due to DLC mismatch. The workaround was to terminate the game and relaunch it. Fixed as of patch 1.3.",
  game_pausable: true,
  quick_save_possible: true,
  quick_save_remark: "Game has both quick saving via a consumable item, and a save file written if you exit to the main menu. Exiting to the main menu does not require a consumable item and this save file can be reloaded multiple times but your user profile only has a single \"exit to main menu\" save file so you should remember to keep making hard saves.",
  mp_drop_out_penalty: nil,
  game_content_remark: "Huge amount of profanity; and the profanity might happen quite suddenly."
)

Game.create!(
  title: "Death Stranding: Directors Cut",
  cut_scenes_pausable: true,
  quick_resume_usable: true,
  quick_resume_remark: "Online play is interrupted, causing an error message and a need to reconnect to online upon resuming.",
  game_pausable: true,
  quick_save_possible: true,
  quick_save_remark: "Autosaves constantly",
  mp_drop_out_penalty: nil,
  mp_drop_out_penalty_remark: "MP in this game is passive",
  game_content_remark: "The 18 rating seems largely due to just 1-2 cutscenes during a 40+ hour playthrough. Most of the gameplay (when you are not pushing through main story missions) is pacifist, though the tone is weird and creepy."
)

Game.create!(
  title: "Dragons Dogma 2",
  cut_scenes_pausable: true,
  quick_resume_usable: true,
  game_pausable: true,
  quick_save_possible: true,
  quick_save_remark: "Game has only a single saved file to load, which is overwritten both by automatic saves and manual saves. It is possible to have an unfavourable save file. There is additionally a second \"Inn Save\" save file on your user profile that is the last you rested at safety. You will want to make occasional \"Inn Save\" saves.",
  mp_drop_out_penalty: nil
)

Game.create!(
  title: "Devil May Cry HD Collection",
  cut_scenes_pausable: false,
  quick_resume_usable: false,
  quick_resume_remark: "Completely broken on XBox Series X, game relaunches on resume",
  game_pausable: true,
  quick_save_possible: false,
  quick_save_remark: "Saving only possible on mission completion.",
  mp_drop_out_penalty: nil
)

Game.create!(
  title: "Hot Wheels: Unleashed 2",
  cut_scenes_pausable: false,
  cut_scenes_pausable_remark: "Cut scenes are infrequent and not a large part of the game",
  quick_resume_usable: true,
  game_pausable: true,
  quick_save_possible: true,
  quick_save_remark: "Autosaves constantly",
  mp_drop_out_penalty: nil,
  mp_drop_out_penalty_remark: "Not tested"
)

Game.create!(
  title: "Metal Gear Solid 5: The Phantom Pain",
  cut_scenes_pausable: true,
  quick_resume_usable: false,
  quick_resume_remark: "On both PlayStation and XBox the game needs a manual reconnection to online services. On XBox Series X the game may be softlocked on resume and need a restart. Workaround is to get to a checkpoint before stepping away from the game.",
  game_pausable: true,
  quick_save_possible: false,
  quick_save_remark: "There are no quicksaves but there are many event and positional triggers for a checkpoint save",
  mp_drop_out_penalty: true,
  mp_drop_out_penalty_remark: "Not tested, but failing to win competitive online encounters results in loss of resources and online ranking.",
  game_content_remark: "A large amount of the game gives you the option of being pacifist. There are a small number of brutal cutscenes."
)

Game.create!(
  title: "Promise Mascot Agency",
  cut_scenes_pausable: false,
  quick_resume_usable: true,
  game_pausable: true,
  quick_save_possible: true,
  quick_save_remark: "Autosaves frequently",
  mp_drop_out_penalty: nil
)

puts "Created #{Game.count} games successfully!"
