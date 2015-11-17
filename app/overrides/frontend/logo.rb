# include ActionView::Helpers::AssetTagHelper
# 
# s = image_tag "/assets/logo/logo_centered_transparent.png", id: 'sanry-logo-164-53'
# markup = "
# <figure id='logo' data-hook>
#   #{s}
# </figure>
# 
# 
# 
# ".html_safe
# 
# Deface::Override.new(:virtual_path => "spree/shared/_header",
#                     :replace       => "figure#logo",
#                     :text          => markup,
#                     :name          => "header-logo")
# 
