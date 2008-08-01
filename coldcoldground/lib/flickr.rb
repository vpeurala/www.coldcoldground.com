# flickr.rb

module FlickrHelper
  def flickr(url, gallery)
  	html = ""
  	html << %(<a href="#{url}.jpg" rel="lightbox[#{gallery}]">\n)
  	html << %(  <img src="#{url}_s.jpg" alt="" />\n)
  	html << %(</a>)
    html
  end
end  # module FlickrHelper

Webby::Helpers.register(FlickrHelper)

# EOF
