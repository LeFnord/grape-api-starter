# frozen_string_literal: true

require 'awesome_print'

require 'starter/version'
require 'starter/builder'
require 'starter/config'

module Starter
  autoload :Rake, 'starter/rake/grape_tasks'
end
