grep
====

Yes, there are already a couple of grep gems around - but they didn't do things
the way I wanted, and weren't easy to fork.  So here's mine.

Installation
------------

To perform a system wide installation:

	gem source -a http://gems.github.com
	gem install JasonKing-grep

Just require it, it just reopens Dir and File and adds the grep instance method
to each of them.  You pass it a regular expression and it returns an array of
hashes, very simple:

	:match => Contains the MatchData object (so you can add parens and capture parts)
	:file => Contains the File#path where the pattern matched (mainly useful for the Dir)
	:lineno => Contains the line number where the pattern matched
	:line => Contains the full line from the file where the pattern matched

That's it, I think that's the best grep you can have.  Call it on a Dir object
and it will drill down through the directory, matching as it goes.  Call it on a
File object and it will just match in that file.

Usage
-----

	require 'grep'
	f = File.open('foo')
	m = f.grep(/^\s*Include\s+(\S+)/)
	m.first[:match][1]	 # => captured parens expression


Contributors
------------
 
* Jason King (JasonKing)
