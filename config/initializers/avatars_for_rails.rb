AvatarsForRails.setup do |config|
  # Filters to run before updating the avatar
  config.controller_filters = [ ]

  # The method to get the avatarable in the controller
  config.controller_avatarable = :current_angryman

  # The default styles that will be generated
  # config.avatarable_styles = { small:  '50x50',
  #                              medium: '120x120' }

  # The tmp path inside public/
  # config.public_tmp_path = File.join('system', 'tmp')
end
