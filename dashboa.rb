#!/usr/bin/ruby

require 'wiringpi2'
require_relative './lcd.rb'
require 'rubygems'
require 'state_machine'

class DevOps

	state_machine :state, initial: :init do

		event :start_button_press do
			transition :init => :build
		end

	end

end

