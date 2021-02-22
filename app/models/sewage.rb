class Sewage < ActiveRecord::Base






  belongs_to :user


  has_many :swg_smps, :dependent => :destroy
  accepts_nested_attributes_for :swg_smps, reject_if: :all_blank, allow_destroy: true


end
