# require libraries/modules here

def create_project_hash
  # This just opens a file and reads it into a local_variable
  html = File.read('fixtures/kickstarter.html')
  
  kickstarter = Nokogiri::HTML(html)
end