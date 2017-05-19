module PortfoliosHelper
  def get_skills(id)
    skills = ''
    PortfolioSkill.where(portfolio_id: id).each do |skill|
      skills = skills + skill.skill.name.to_s + ' / '
    end
    return skills
  end
end
