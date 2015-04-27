#!/usr/bin/env ruby
class Contact
  include ActiveModel::Model  #Mix in behavior from ActiveModel class
  attr_accessor :name, :string  #Class Attributes
  attr_accessor :email, :string
  attr_accessor :content, :string
  
  validates_presence_of :name #ActiveModel's validation methods
  validates_presence_of :email
  validates_presence_of :content
  validates_format_of :email,
    with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  validates_length_of :content, :maximum => 500
  
end
