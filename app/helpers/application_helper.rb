module ApplicationHelper
	# Returns the full title on a per page basis
	def full_title(page_title = '')
		base_title = 'Ruby on Rails Tutorial Sample App'
		if page_title.empty?
			base_title
		else
			page_title + ' | ' + base_title
		end
	end

	def yes_no(val)
    if val.is_a?(String)
      if %w(1 true).include? val
        'Yes'
      elsif %w(0 false).include? val
        'No'
      end
    else
      val ? 'Yes' : 'No'
    end
  end

	def error_messages_for(thing)
    if thing.errors.any?
      render 'admin/shared/error_messages', thing: thing
    end
  end
end
