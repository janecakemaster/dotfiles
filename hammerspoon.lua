
-- A global variable for the Hyper Mode
hyper = hs.hotkey.modal.new({}, "F17")

-- Enter Hyper Mode when F18 (Hyper/Capslock) is pressed
pressedF18 = function()
  hyper.triggered = false
  hyper:enter()
end

-- Leave Hyper Mode when F18 (Hyper/Capslock) is pressed,
--   send ESCAPE if no other keys are pressed.
releasedF18 = function()
  hyper:exit()
  if not hyper.triggered then
    hs.eventtap.keyStroke({}, 'ESCAPE')
  end
end

-- Bind the Hyper key
f18 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)

spectacle = {'f', 'h', 'i', 'j', 'k', 'l', 'u'}
for i, key in ipairs(spectacle) do
  hyper:bind({}, key, nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, key) end)
end

launch = function(appname)
  hs.application.launchOrFocus(appname)
  hyper.triggered = true
end

-- Single keybinding for app launch
-- keys used by Spectacle: f,j,k,l,u
singleapps = {
  {'b', 'Slack'},
  {'c', 'Google Chrome'},
  {'m', 'Messages'},
  {'n', 'Sonos'},
  {'o', 'Visual Studio Code'},
  {'s', 'Spotify'}
}

for i, app in ipairs(singleapps) do
  hyper:bind({}, app[1], function() launch(app[2]); hyper:exit(); end)
end

