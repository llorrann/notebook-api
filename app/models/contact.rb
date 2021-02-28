class Contact < ApplicationRecord
    belongs_to :kind ##, optional: true
    # def author
    #     "Lorran Mariuba"      
    # end
    # def as_json(options={})
    #     super(
    #        methods: :author, 
    #        root: true,
    #        include: :kind
    #     )
    # end
end
