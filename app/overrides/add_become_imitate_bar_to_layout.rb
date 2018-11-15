Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                    :name => "add_become_imitate_bar_to_layout",
                    :insert_top => "[data-hook='body']",
                    partial: 'spree/shared/imitate_bar')

Deface::Override.new(:virtual_path => "spree/admin/shared/_header",
                    :name => "add_become_imitate_bar_to_admin_layout",
                    :insert_top => "[role='navigation']",
                    partial: 'spree/shared/imitate_bar')
