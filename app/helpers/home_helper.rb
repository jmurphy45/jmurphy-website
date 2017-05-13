require 'open-uri'
module HomeHelper
  def gihub_contributions
    num = 0
    repos = open('https://api.github.com/users/jmurphy45/repos')
    #/repos/:owner/:repo/stats/commit_activity
    JSON.parse(repos).each do |r|
      #repo = open('/repos/jmurphy45/'+ r.name +'/stats/commit_activity')
      JSON.parse(repos).each do |repo|

      end
    end
  end
end
