class PasswordChecker
	def check_password (email, password)
		password_array = password.split("")
		if password.length >= 8 && password_array.any?{ |x| /[[:alpha:]]/ =~ x}  && password_array.any? {|x| x =~ /[[0-9]]/} && password_array.any? { |x| x =~ /[[^a-zA-Z0-9]]/}
			true
		else
			false
		end
	end
end
