module ProjectsHelper
  def project_status_options
    Project.statuses.keys.map { |key| [key, key] }
  end
end
