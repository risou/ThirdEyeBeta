class TwitterController < ApplicationController
  class << self
    attr_accessor :client
  end
end
