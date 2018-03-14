
-- A global variable for the Hyper Mode
k = hs.hotkey.modal.new({}, "F17")

-- Enter Hyper Mode when F18 (Hyper/Capslock) is pressed
pressedF18 = function()
  k.triggered = false
  k:enter()
end

-- Leave Hyper Mode when F18 (Hyper/Capslock) is pressed,
--   send ESCAPE if no other keys are pressed.
releasedF18 = function()
  k:exit()
  if not k.triggered then
    hs.eventtap.keyStroke({}, 'ESCAPE')
  end
end

-- Bind the Hyper key
f18 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)

spectacle = {'f', 'h', 'i', 'j', 'k', 'l', 'u'}
for i, key in ipairs(spectacle) do
  k:bind({}, key, nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, key) end)
end

launch = function(appname)
  hs.application.launchOrFocus(appname)
  k.triggered = true
end

-- Single keybinding for app launch
-- keys used by Spectacle: f,j,k,l,u
singleapps = {
  {'b', 'Slack'},
  {'c', 'Google Chrome'},
  {'m', 'Messages'},
  {'n', 'Sonos'},
  {'o', 'Visual Studio Code'},
  {'s', 'Google Play Music Desktop Player'}
}

for i, app in ipairs(singleapps) do
  k:bind({}, app[1], function() launch(app[2]); k:exit(); end)
end

