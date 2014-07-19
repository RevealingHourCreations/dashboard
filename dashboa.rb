#!/usr/bin/ruby

=begin

Red led    | Waiting
Green led  | Build
Yellow led | Deployment
Blue led   | Monitoring

=end


require 'rubygems'
require 'state_machine'

class DevOps
  state_machine :state, :initial => :waiting do                              

  after_transition :on => :commit, :do => :redled

  event :commit do
    transition :waiting => :build
  end

  event :buildfail do
    transition :build => :waiting 
  end
  
  event :buildpass do
    transition :build => :deployment
  end

  event :deployed do
    transition :deployment => :monitoring
  end

  event :deployfailed do
    transition :deployment => :build
  end
  
  event :
  
end

def flushleds

end

def redled
  flushleds
  puts "Turning on red LED"
end

def blueled
  flushleds
  puts "Turning on blue LED"
end

def yellowled
  flushleds
  puts "Turning on yellow LED"
end

def greenled
  flushleds
  puts "Turning on green LED"
end

end
