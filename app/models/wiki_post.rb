class WikiPost < ApplicationRecord
  has_one_attached :image

  def meta
    "Created by " + self.author + " on " + I18n.l(self.created_at, format: long) + " and last updated " + I18n.l(self.updated_at, format: long)
    # "Created by " + self.author + " on " + self.created_at.to_s+ " and last updated " + self.updated_at.to_s
  end
end
