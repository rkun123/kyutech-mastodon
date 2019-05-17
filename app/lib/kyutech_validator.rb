module KyutechValidator

  def ip_valid?
	request::remote_ip.match(Setting.ok_ip)
  end

  def in_kyutech!
	return if ip_valid?
	respond_with_error(403, error_name="not_in_kyutech")
  end
  
  module_function :ip_valid?, :in_kyutech!

end
