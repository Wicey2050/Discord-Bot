local discordia = require('discordia')
local client = discordia.Client()
client:on([[ready]], function ()
client:setStatus('online')
discordia.extensions()
end)

client:on('ready', function()
    print('Logged in as '.. client.user.username)
end)

client:on("messageCreate", function(message)

  local content = message.content
  local author = message.guild:getMember(message.author.id)
  
  if content:lower():sub(1,#'-add') == '-add' then
    local author = message.guild:getMember(message.author.id)
    local member = message.mentionedUsers.first
    if not member then
      message:reply{
          embed = {
            title = 'Server Message',
            fields = {
            {name = 'Error: ', value = 'User is not valid.', inline = false},
            },
        color = 000000,
        timestamp = discordia.Date():toISO('T', 'Z')
          }
        }
    return
  end
if author:hasPermission("banMembers") == false then
  message:reply{
      embed = {
        title = 'Server Message',
        fields = {
        {name = 'Error: ', value = 'User does not have permission.', inline = false},
        },
    color = 000000,
    timestamp = discordia.Date():toISO('T', 'Z')
      }
    }
  return
  end
end
for user in message.mentionedUsers:iter() do
  local member = message.mentionedUsers.first
  if string.find(message.content, "<@[!]?" .. user.id .. ">") then
    io.open("./List.txt"):write(user.id, '/n')
  end
end

if content:lower():sub(1,#'-delete') == '-delete' then
  local author = message.guild:getMember(message.author.id)
  local member = message.mentionedUsers.first

  if not member then
    message:reply{
        embed = {
          title = 'Server Message',
          fields = {
          {name = 'Error: ', value = 'User is not valid.', inline = false},
          },
      color = 000000,
      timestamp = discordia.Date():toISO('T', 'Z')
        }
      }
  return
end
elseif not author:hasPermission("banMembers") then
message:reply{
    embed = {
      title = 'Server Message',
      fields = {
      {name = 'Error: ', value = 'User does not have permission.', inline = false},
      },
  color = 000000,
  timestamp = discordia.Date():toISO('T', 'Z')
    }
  }
return
end

for user in message.mentionedUsers:iter() do
if string.find(message.content, "<@[!]?" ..user.id.. ">") then
    local file = io.open("./List.txt")
    file:seek(message.mentionedUsers.name)
  end
    end
  if content:lower():sub(1,#'-list') == '-list' then
    local author = message.guild:getMember(message.author.id)
    local file = io.open("./List.txt")
    message:reply{
        embed = {
          title = 'Good List',
          fields = {
          {name = 'Name: ', value = file:read(), inline = false},
          },
      color = 000000,
      timestamp = discordia.Date():toISO('T', 'Z')
        }
      }
  end
end)
client:run("Bot "..io.open("./Token.txt"):read())
