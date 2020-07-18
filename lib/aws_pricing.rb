require "aws_pricing/version"
require "aws_pricing/region"
require "aws_pricing/ec2"
require "aws_pricing/emr"
require "aws_pricing/s3"
require "aws_pricing/cache"

module AWSPricing

  extend self

  def region name
    AWSPricing::Region.find name
  end

end
