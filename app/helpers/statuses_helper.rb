module StatusesHelper
	def linkify(text)    
	  text.gsub!(/@([\w]+)(\W)?/, '<a href="http://twitter.com/\1">@\1</a>\2')
	  text.gsub!(/#([\w]+)(\W)?/, '<a href="http://twitter.com/search?q=%23\1">#\1</a>\2') #destructive function, modifying 
	  return text
	end
end


# mixed into view context