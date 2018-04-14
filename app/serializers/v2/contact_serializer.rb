module V2
    class ContactSerializer < ActiveModel::Serializer
        #Associations
        belongs_to :kind,optional: true do
          link(:related) {v2_contact_kind_url(object.id)}
        end
      
        has_many :phones do
          link(:related) {v2_contact_phones_url(object.id)}
        end
      
        has_one :address do
          link(:related) {v2_contact_address_url(object.id)}
        end
      
        #Attributes
        attributes :id, :name, :email, :birthdate
      
        def attributes(*args)
        h = super(*args)
        # pt-BR ---> h[:birthdate] = I18n.l(object.birthdate) unless object.birthdate.blank?
        h[:birthdate] = object.birthdate.to_time.iso8601 unless object.birthdate.blank?
        h
        end
      end
      
end