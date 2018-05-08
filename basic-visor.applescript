tell application "System Events"
	if not (exists (window 1 of process "Finder")) then
		tell application "Finder" to make new Finder window
		tell application "Finder"
			set screenResolution to bounds of window of desktop
			set mBottom to item 4 of screenResolution
			set mTop to mBottom / 3
			set mLeft to 0
			set mRight to item 3 of screenResolution
			set bounds of front window to {mLeft, mTop, mRight, mBottom}
		end tell
		activate application "Finder"
	else
		if visible of application "Finder" is false then
			activate application "Finder"
			tell application "Finder"
				set visible to true
			end tell
		else
			tell application "Finder"
				set visible to false
			end tell
		end if
	end if
end tell
