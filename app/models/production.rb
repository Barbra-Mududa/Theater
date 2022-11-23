class Production < ApplicationRecord
    has_many :crew_members

    # cusrom rendering
    def title_director
        "#{title}: #{director}"
    end
end
