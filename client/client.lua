ESX = exports["es_extended"]:getSharedObject()

TriggerEvent('chat:addSuggestion', '/fps', 'Open het FPS Menu')

RegisterNetEvent('KJScripts:fpsmenu') 
AddEventHandler('KJScripts:fpsmenu', function()
  lib.showContext('KJScripts')
end)

RegisterNetEvent('KJScripts:fps1') 
AddEventHandler('KJScripts:fps1', function()
  SetTimecycleModifier('yell_tunnel_nodirect')
  lib.notify({title = '',description = 'FPS Boost',type = 'success'})
end)

RegisterNetEvent('KJScripts:fps2') 
AddEventHandler('KJScripts:fps2', function()
  SetTimecycleModifier('tunnel')
  lib.notify({title = '',description = 'Lights Mode',type = 'success'})
end)

RegisterNetEvent('KJScripts:fps3') 
AddEventHandler('KJScripts:fps3', function()
  SetTimecycleModifier('MP_Powerplay_blend')
  SetExtraTimecycleModifier('reflection_correct_ambient')
  lib.notify({title = '',description = 'Graphics',type = 'success'})
end)

RegisterNetEvent('KJScripts:fps4') 
AddEventHandler('KJScripts:fps4', function()
  SetTimecycleModifier()
  ClearTimecycleModifier()
  ClearExtraTimecycleModifier()
  lib.notify({title = '',description = 'Reseted to default',type = 'success'})
end)



lib.registerContext({
  id = 'KJScripts',
  title =  'KJ Scripts Fps Menu',
  onExit = function()
  end,
  options = {
      {
          title = 'FPS Boost',
          description = 'Helpt het beste bij het verhogen van de fps',
          icon = 'fas fa-keyboard',
          event = 'KJScripts:fps1',
      },
      {
        title = 'Lights Mode',
        description = 'Ziet er licht uit en boost je fps',
        icon = 'far fa-lightbulb',
        event = 'KJScripts:fps2',
    },
    {
      title = 'Graphics',
      description = 'Ziet er goed uit en verhoogt de fps',
      icon = 'far fa-newspaper',
      event = 'KJScripts:fps3',
  },
      {
          title = 'Reset',
          description = '',
          icon = 'fa fa-remove',
          event = 'KJScripts:fps4',
      },
      
  },
})
                
