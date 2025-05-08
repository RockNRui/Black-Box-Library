
execute store result score $gamerule.send_feedback bbl.main run gamerule sendCommandFeedback

execute if score $gamerule.send_feedback bbl.main matches 1 run function bb:lib/chat/hide_feedback/hide
