options = {
  virtual_path:  "spree/layouts/spree_application",
  insert_bottom: "body[data-hook='body']",
  text:           "<%= render 'layouts/footer' %>",
  name:          "header-logo"
}

Deface::Override.new options
