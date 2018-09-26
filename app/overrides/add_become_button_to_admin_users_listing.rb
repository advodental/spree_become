Deface::Override.new(:virtual_path => "spree/admin/users/index",
                    :name => "add_become_button_to_admin_users_listing",
                    :insert_bottom => "[data-hook='admin_users_index_row_actions']",
                    :text => "<%= link_to('Become', switch_session_admin_users_path(id: user.id), class: 'btn btn-primary btn-sm') if can?(:edit, user) %>")