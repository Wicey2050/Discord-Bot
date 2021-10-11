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
  local member = message.mentionedUsers.first
  
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
if member == true then
io.open("./List.txt"):write(member.id, '/n')
end
if content:lower():sub(1,#'-delete') == '-delete' then
  local author = message.guild:getMember(message.author.id)
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

if member == true then
  io.open("./List.txt"):seek(member.id)
  io.open("./List.txt"):write(member.id, " ")
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
