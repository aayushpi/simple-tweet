module StatusesHelper

	def linkup_mentions_and_hashtags(text)    
	  text.gsub!(/@([\w]+)(\W)?/, '<a href="http://twitter.com/\1">@\1</a>\2')
	  text.gsub!(/#([\w]+)(\W)?/, '<a href="http://twitter.com/search?q=%23\1">#\1</a>\2')
	  return text
	end


end
