function balloons:reset_chat

tellraw @a {"text":"ὠ\n\n\n\n\n","font":"balloons"}
tellraw @a [{"text":"        ---==<   ","color": "red"},{"translate":"balloons.info", "fallback": "▶ Info","color": "gold","hoverEvent": {"action": "show_text","value": [{"translate":"balloons.info_2","color": "gold"}]}},{"text":"   >==---","color": "red"}]
tellraw @a [{"text":"        ---==<   ","color": "red"},{"translate":"balloons.settings", "fallback": "▶ Settings","color": "gold","hoverEvent": {"action": "show_text","value": [{"translate":"balloons.click_to_open","color": "gold"}]},"clickEvent": {"action":"run_command","value": "/function balloons:settings_page"}},{"text":"   >==---","color": "red"}]
tellraw @a [{"text":"        ---==<   ","color": "red"},{"translate":"balloons.authors", "fallback": "▶ Authors","color": "gold","hoverEvent": {"action": "show_text","value": [{"translate":"balloons.authors_2","color": "gold"}]}},{"text":"   >==---","color": "red"}]