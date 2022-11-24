class Production < ApplicationRecord
    has_many :crew_members

    validates :title, presence: :true
    validate :no_more_musicals

    #custom validations
    def no_more_musicals
        if genre.downcase == "musical"
            error.add(:genre, "Sorry no ore musicals")
    end

    # cusrom rendering
    def title_director
        "#{title}: #{director}"
    end
end
