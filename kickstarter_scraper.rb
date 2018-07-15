# require libraries/modules here

def create_project_hash
  # This just opens a file and reads it into a local_variable
  html = File.read('fixtures/kickstarter.html')
  
  kickstarter = Nokogiri::HTML(html)
  
  project_hash{}
  projects = kickstarter.css("li.project.grid_4")
  projects.each do |project|
    title = project.css(h2.bbcard_name strong a").text.to_sym
    project_hash[title] = {
      
    }
end