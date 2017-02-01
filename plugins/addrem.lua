local function addgroup(msg)
local group = load_data('bot/group.json')
local groupa = group[tostring(msg.chat_id)]
if not groupa then
group[tostring(msg.chat_id)] = {
        group_type = 'SuperGroup',
		by = msg.from_id,
      save_data(_config.group.data, group)
tg.sendMessage(msg.chat_id, msg.id_, 1, 'slm', 1)
else
tg.sendMessage(msg.chat_id, msg.id_, 1, '', 1)
end
end
local function remgroup(msg)
local group = load_data('bot/group.json')
local groupa = group[tostring(msg.chat_id)]
if groupa then
group[tostring(msg.chat_id)] = nil
      save_data(_config.group.data, group)
tg.sendMessage(msg.chat_id, msg.id_, 1, 'by', 1)
else
tg.sendMessage(msg.chat_id, msg.id_, 1, '', 1)
end
end

local function run(msg, matches)
if matches[1] == 'slm' and is_sudo(msg) then
addgroup(msg)
elseif matches[1] == 'by' and is_sudo(msg) then
remgroup(msg)
end
end
return {
  patterns = {
    "^[/#!](slm)$",
    "^[/#!](by)$",
    "^!!!edit:[/#!](slm)$",
    "^!!!edit:[/#!](by)$"
  },
  run = run
}
