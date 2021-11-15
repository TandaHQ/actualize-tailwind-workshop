module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user, options = { size: 80 })
    size         = options[:size]
    gravatar_id  = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    css = "gravatar rounded-full h-12 w-12 flex items-center justify-center"
    css << " animate-spin" if user == current_user
    image_tag(gravatar_url, alt: user.name, class: css)
  end
end
