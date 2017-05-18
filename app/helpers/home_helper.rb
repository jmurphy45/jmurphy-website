
module HomeHelper
  def gihub_contributions

  end

  def generate_date(start, finish, present = false )
    if present
      return start.strftime("%B %Y") + ' - present'
    else
      return start.strftime("%B %Y") + ' - ' + finish.strftime("%B %Y")
    end
  end

  def github_repos


  end
end
