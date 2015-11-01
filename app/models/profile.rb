class Profile < ActiveRecord::Base
  belongs_to :user

  has_many :profile_courtship_preferences
  has_many :courtship_preferences, through: :profile_courtship_preferences
  # accepts_nested_attributes_for :profile_courtship_preferences

  # validates :name, :age, :dob, :country, :state, :city, :gender, :status,
              # :religion, :language, :ethnicity, :occupation, :income, :household,
              # :height, :weight, :bodytype, :expectations, :smoker, :drinker, :children,
              # :wantkids, :selfbio, :ideal, :tandc, presence: true

  def male?
    self.gender == "Male"
  end

  def female?
    self.gender == "Female"
  end

  def finish_basic_info?
    if  self.name.blank? || self.age.blank? || self.dob.blank? ||
        self.country.blank? || self.state.blank? || self.city.blank? ||
        self.gender.blank? || self.status.blank?
      false
    else
      true
    end
  end

  def finish_personal_info?
    if  self.religion.blank? || self.language.blank? || self.ethnicity.blank? ||
        self.occupation.blank? || self.income.blank? || self.household.blank? ||
        self.height.blank? || self.weight.blank? || self.bodytype.blank?
      false
    else
      true
    end
  end

  def finish_additional_info?
  end

  def finished_profile?
    return finish_basic_info? && finish_personal_info? && finish_additional_info? ? true : false
  end
end
