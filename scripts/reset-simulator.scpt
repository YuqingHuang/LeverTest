tell application "iPhone Simulator"
    activate
end tell

tell application "System Events"
    set frontmost of process "iPhone Simulator" to true
    tell process "iPhone Simulator"
        tell menu bar 1
            tell menu bar item "iOs Simulator"
                tell menu "iOs Simulator"
                    click menu item "Reset Content and Settings…"
                end tell
            end tell
        end tell
        tell window 1
            click button "Reset"
        end tell
    end tell
end tell
