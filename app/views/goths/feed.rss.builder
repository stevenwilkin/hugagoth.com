xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
	xml.channel do
		xml.title "hug a goth"
		xml.description "because goths need love to"
		xml.link root_url

		@goths.each do |goth|
			xml.item do
				xml.title goth.name

				xml.pubDate goth.published_at
				xml.link url_for goth_permalink_url(goth)
			end
		end

	end
end
