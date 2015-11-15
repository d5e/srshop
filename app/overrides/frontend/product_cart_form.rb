# Deface::Override.new(:virtual_path  => "spree/products/_cart_form",
#                      :insert_top    => "div#product-variants",
#                      :text          => "<h2 style='color:#d833e9;'>PÖPER DI MÖPER</h2>",
#                      :name          => "product_cart_form")
#                  
#                  
#                  
#                  
#                  
#                  
#                  
#                  
#                  
# Deface::Override.new(:virtual_path  => "spree/products/_cart_form",
#                     :insert_top    => "span.variant-description",
#                     :text          => "BBB",
#                     :name          => "product_cart_form_desc")
# 








Spree::Config[:show_variant_full_price] = true