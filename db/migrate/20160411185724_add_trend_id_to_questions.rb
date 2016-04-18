class AddTrendIdToQuestions < ActiveRecord::Migration
  def change
    add_reference :questions, :trend, index: true, foreign_key: true
  end
end
