# -*- coding: utf-8 -*-
# configures your navigation

SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    if user_signed_in?
      primary.item :edit_profile, current_user.email, edit_user_registration_path, class: 'navbar-link'
      primary.item :logout, t('helpers.submit.logout'), destroy_user_session_path, method: :delete, class: 'navbar-link'
    else
      primary.item :signup, t('helpers.submit.signup'), new_user_registration_path, class: 'navbar-link'
      primary.item :signin, t('helpers.submit.signin'), new_user_session_path, class: 'navbar-link'
    end

    primary.dom_class = 'nav navbar-nav pull-right'

    # you can turn off auto highlighting for a specific level
    primary.auto_highlight = true
  end
end