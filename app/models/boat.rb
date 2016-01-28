class Boat < ActiveRecord::Base
	validates_uniqueness_of :name, uniqueness: { case_sensitive: false }
	validates_presence_of :name, on: :create 
	#only allow integers into container limit. Users are told of this in the view
	validates_presence_of :container_limit, on: :create, numericality: { only_integer: true }
	has_many :salesmen, through: :salesman_boats
	has_many :salesman_boats
	has_many :port_managers, through: :port_manager_boats
	has_many :port_manager_boats
	has_many :work_orders, through: :boat_work_orders
	has_many :boat_work_orders
	#for paperclip gem to access avatars
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png" 
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
	validates_presence_of :avatar, on: :create
end
