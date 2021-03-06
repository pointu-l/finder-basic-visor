tell application "System Events"
	if not (exists (window 1 of process "Finder")) then
		
		tell application "Finder"
			
			set screenResolution to bounds of window of desktop
			set mBottom to item 4 of screenResolution
			set mTop to mBottom / 3
			set mLeft to 0
			set mRight to item 3 of screenResolution
			make new Finder window
			set bounds of front window to {mLeft, mTop, mRight, mBottom}
			set visible to false
			set visible to true
		end tell
		
	else
		activate application "Finder"
		tell application "Finder"
			set visible to true
			set collapsed of windows to false
		end tell
	end if
	
end tell
