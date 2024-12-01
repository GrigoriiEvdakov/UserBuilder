require 'rails_helper'

RSpec.describe Skill, type: :model do

  it 'может быть присвоен переменной как ссылка на класс' do
    alias_skill = Skill
    expect(alias_skill).to eq(Skill)
  end

  it 'может ссылаться на другую таблицу через table_name' do
    class SkillWithCustomTable < Skill
      self.table_name = 'custom_skills'
    end
    expect(SkillWithCustomTable.table_name).to eq('custom_skills')
  end
end
