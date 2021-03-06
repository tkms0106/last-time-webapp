class Event < ApplicationRecord
  after_create :create_first_date
  validates_presence_of :user_id, :title, :occurred_at
  validates_uniqueness_of :title, uniqueness: { scope: :user_id }
  belongs_to :user
  has_many :histories, dependent: :delete_all

  private

    def create_first_date
      histories.create(occurred_at: occurred_at)
    end

    def self.search(term)
      term ? where(['title LIKE ?', "%#{term}%"]) : all
    end
end
