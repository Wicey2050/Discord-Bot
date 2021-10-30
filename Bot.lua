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

--TEMPLETE
--if content:lower():sub(1,#'-') == '-' then
--message:reply{
  --embed = {
    --title = 'System Message',
    --fields = {
    --{name = '', value = '', inline = false},
    --},
--color = 000000,
--timestamp = discordia.Date():toISO('T', 'Z')
  --}
--} 
--end 

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--BIO
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if content:lower():sub(1,#'-bio') == '-bio' then
  if not author:hasRole("903687425870676029") then
    message:reply{
      embed = {
        title = 'System Message',
        fields = {
        {name = 'Permissions', value = 'user doesnt have permission to use command.', inline = false},
        },
    color = 000000,
    timestamp = discordia.Date():toISO('T', 'Z')
      }
    } 
    return
  end  
  
  message:reply{
    embed = {
      title = 'System Message',
      fields = {
      {name = 'Item1', value = 'link', inline = false},
      },
  color = 000000,
  timestamp = discordia.Date():toISO('T', 'Z')
    }
  } 
end 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--HEALTH 011
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if content:lower():sub(1,#'-health') == '-health' then
  if not author:hasRole("903687425870676029") then
    message:reply{
      embed = {
        title = 'System Message',
        fields = {
        {name = 'Permissions', value = 'user doesnt have permission to use command.', inline = false},
        },
    color = 000000,
    timestamp = discordia.Date():toISO('T', 'Z')
      }
    } 
    return
  end  

  message:reply{
    embed = {
      title = 'System Message',
      fields = {
      {name = 'Item1', value = 'link', inline = false},
      },
  color = 000000,
  timestamp = discordia.Date():toISO('T', 'Z')
    }
  } 
end 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--ART HISTORY
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if content:lower():sub(1,#'-arthistory') == '-arthistory' then
  if not author:hasRole("903687425870676029") then
    message:reply{
      embed = {
        title = 'System Message',
        fields = {
        {name = 'Permissions', value = 'user doesnt have permission to use command.', inline = false},
        },
    color = 000000,
    timestamp = discordia.Date():toISO('T', 'Z')
      }
    } 
    return
  end  

  message:reply{
    embed = {
      title = 'System Message',
      fields = {
      {name = 'Item1', value = 'link', inline = false},
      },
  color = 000000,
  timestamp = discordia.Date():toISO('T', 'Z')
    }
  } 
end 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SPANISH
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if content:lower():sub(1,#'-spanish') == '-spanish' then
  if not author:hasRole("903687425870676029") then
    message:reply{
      embed = {
        title = 'System Message',
        fields = {
        {name = 'Permissions', value = 'user doesnt have permission to use command.', inline = false},
        },
    color = 000000,
    timestamp = discordia.Date():toISO('T', 'Z')
      }
    } 
    return
  end  


  message:reply{
    embed = {
      title = 'System Message',
      fields = {
      {name = 'Item1', value = 'link', inline = false},
      },
  color = 000000,
  timestamp = discordia.Date():toISO('T', 'Z')
    }
  } 
end 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--HONORS ENGLISH
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if content:lower():sub(1,#'-henglish') == '-henglish' then
  if not author:hasRole("903687425870676029") then
    message:reply{
      embed = {
        title = 'System Message',
        fields = {
        {name = 'Permissions', value = 'user doesnt have permission to use command.', inline = false},
        },
    color = 000000,
    timestamp = discordia.Date():toISO('T', 'Z')
      }
    } 
    return
  end  


  message:reply{
    embed = {
      title = 'System Message',
      fields = {
      {name = 'Item1', value = 'link', inline = false},
      },
  color = 000000,
  timestamp = discordia.Date():toISO('T', 'Z')
    }
  } 
end 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--ENGLISH
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if content:lower():sub(1,#'-english') == '-english' then
  if not author:hasRole("903687425870676029") then
    message:reply{
      embed = {
        title = 'System Message',
        fields = {
        {name = 'Permissions', value = 'user doesnt have permission to use command.', inline = false},
        },
    color = 000000,
    timestamp = discordia.Date():toISO('T', 'Z')
      }
    } 
    return
  end  


  message:reply{
    embed = {
      title = 'System Message',
      fields = {
      {name = 'Item1', value = 'link', inline = false},
      },
  color = 000000,
  timestamp = discordia.Date():toISO('T', 'Z')
    }
  } 
end 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--GRAPHIC ARTS
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if content:lower():sub(1,#'-graphicart') == '-graphicart' then
  if not author:hasRole("903687425870676029") then
    message:reply{
      embed = {
        title = 'System Message',
        fields = {
        {name = 'Permissions', value = 'user doesnt have permission to use command.', inline = false},
        },
    color = 000000,
    timestamp = discordia.Date():toISO('T', 'Z')
      }
    } 
    return
  end  


  message:reply{
    embed = {
      title = 'System Message',
      fields = {
      {name = 'Item1', value = 'link', inline = false},
      },
  color = 000000,
  timestamp = discordia.Date():toISO('T', 'Z')
    }
  } 
end 

end)
client:run("Bot "..io.open("./Token.txt"):read())
