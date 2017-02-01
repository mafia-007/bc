
local function run(msg, matches)
	if matches[1] == 'bc' and is_sudo(msg) then
		local group = load_data(_config.group.data)
		local text = matches[2]
			for k,v in pairs(group) do
				tg.sendMessage(k, 0, 0,  text, 0)
	end
	
	end
	end
return {
  patterns = {
  
    "^[#!/](bc) (.*)$"
  },
  run = run
}
--@mafia_cli
--https://github.com/mafia-007
