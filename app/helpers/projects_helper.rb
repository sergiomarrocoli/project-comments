module ProjectsHelper
  def project_status_options
    Project.statuses.keys.map { |key| [key, key] }
  end

  def project_pill_colour(status)
    case status
    when 'to do'
      'green-500'
    when 'in progress'
      'red-500'
    when 'complete'
      'black'
    end
  end
end
