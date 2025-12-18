# save this to a file somewhere and make it executable
# call with argument from -2 to 2 depending on the direction you want to go in
jq -nr \
	--argjson displays "$(yabai -m query --displays)" \
	--argjson focused "$(yabai -m query --displays --display)" \
	--argjson direction "${1}" \
	'$displays
		| map(select(.id != $focused.id))
		| sort_by((1 | atan * 2 * $direction) 
			- (	  (.frame.y + .frame.h / 2 - $focused.frame.y - $focused.frame.h / 2) 
				/ (.frame.x + .frame.w / 2 - $focused.frame.x - $focused.frame.w / 2) 
				| atan)
			| fabs)
		| first.index // empty' \
	| xargs yabai -m display --focus
