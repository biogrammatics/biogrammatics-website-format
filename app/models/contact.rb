class Contact
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :first_name, :string
  attribute :last_name, :string
  attribute :email, :string
  attribute :phone, :string
  attribute :subject, :string
  attribute :message, :string

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :message, length: { maximum: 1000 }
end
