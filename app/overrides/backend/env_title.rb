unless Rails.env.production?
  Deface::Override.new(
    :virtual_path => 'spree/admin/shared/_header',
    :name => 'add_debug_line_if_env_not_production',
    :insert_before => '[data-hook="admin_login_navigation_bar"]',
    :text => "<h4 style='position: absolute; color:#fff;'>[#{Rails.env}]</h4>"
  )
end

Spree::Config[:admin_interface_logo] = "logo/logo_sanry_80_white.png"