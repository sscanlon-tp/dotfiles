function Terminal()
    kitty = hs.task.new(
        "/Applications/kitty.app/Contents/MacOS/kitty",
        nil,
        function() return false end,
        { "--session=startup.conf" }
    )
    kitty:start()
    hs.alert("yo")
end

hs.hotkey.bind({ "cmd", "ctrl", "enter" }, "T", function()
    Terminal()
end)

--hs.application.launchOrFocus('Tunnelblick')

