# flickr.rb

module FlickrHelper
  def flickr(url, gallery)
  	html = ""
  	html << %(<a href="#{url}.jpg" class="lightwindow" rel="Cold Cold Ground [#{gallery}]">\n)
  	html << %(  <img src="#{url}_s.jpg" alt="" />\n)
  	html << %(</a>)
    html
  end
end  # module FlickrHelper

Webby::Helpers.register(FlickrHelper)

# EOF
