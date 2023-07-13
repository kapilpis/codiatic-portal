# frozen_string_literal: true

module SettingsHelper
  def login_layout
    case ['ILLUSTRATION', 'COVER'][0]
    when 'ILLUSTRATION'
      'body/login_illustration'
    when 'COVER'
      'body/login_cover'
    else
      'body/login'
    end
  end

  def interface_layout
    case ['VERTICAL', 'VERTICAL-TRANSPARENT', 'OVERLAP', 'CONDENSED'][0]
    when 'VERTICAL'
      'body/vertical'
    when 'VERTICAL-TRANSPARENT'
      'body/vertical_transparent'
    when 'OVERLAP'
      'body/overlap'
    when 'CONDENSED'
      'body/condensed'
    else
      'body/horizontal'
    end
  end

  def interface_mode
    case ['DARK', 'LIGHT'][0]
    when 'DARK'
      'dark'
    else
      'light'
    end
  end
end
