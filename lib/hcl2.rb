# frozen_string_literal: true

require "parslet"
require_relative "hcl2/parser"
require_relative "hcl2/version"

module Hcl2
  class Error < StandardError; end
end
