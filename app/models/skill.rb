class Skill < ApplicationRecord
  has_and_belongs_to_many :users, join_table: 'users_skills'
end
#1.можно без миграции присвоить к переменной модель нашу, это будет всего лишь ссылка на класс наш  Skill = Skil
#2. можно вручную переименовать модель и сделать ссылку на таблицу в схеме  self.table_name = 'skils'
#3. самый лучший вариант который мы использовали это сгенерировать миграцию и сделать ренейм таблицы, и сделать ренейм в модели вручную