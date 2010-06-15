# subscript and superscripts
s:_\{([^}]*)\}:<sub>\1</sub>:g
s:_(\w):<sub>\1</sub>:g
s:\^\{([^}]*)\}:<sup>\1</sup>:g
s:\^(\w):<sup>\1</sup>:g

# sets
s:\\in:<span style="font-size\: 75%">\&isin;</span>:g
s:\\bigcup:<span style="font-size\: 150%">\&cup;</span>:g
s:\\cup:\&cup;:g

# asymptotic notations
s:\\Omega:\&Omega;:g
s:\\omega:\&omega;:g
s:\\Theta:\&Theta;:g

# math mode
s:\$([^$]*)\$:<span style="white-space\: nowrap; font-style\: italic">\1</span>:g
s:\(:<span style="font-style\: normal">(</span>:g
s:\):<span style="font-style\: normal">)</span>:g

# math operators
s:\\log\s*:log\&nbsp;:g

# black line (new paragraph)
s:^\s*$:<p>:g


# non-breaking space
s:\\ :\&nbsp;:g

# accents
s:\\v\{s\}:s:g

# blackboard bold - see 
# http://en.wikipedia.org/wiki/Blackboard_bold and 
# http://kongming.net/development/tools/unicode-to-decimal-entity-encoder.php
s:\\R:\&#8477;:g
s:\\Re:\&#8477;:g

# other stuff
s:\\etal:<i>et al.</i>:g
