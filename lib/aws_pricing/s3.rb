require 'aws_pricing/s3_storage'
require 'aws_pricing/s3_requests'
require 'aws_pricing/s3_data_transfer'

class AWSPricing::S3

  attr_reader :region

  REGION_MAPPING = {
       'us-east-1' => "us-std",
       'us-west-1' => "us-west-1",
       'us-west-2' => "us-west-2",
       'eu-west-1' => "eu-west-1",
        'eu-central-1' => "eu-central-1",
       'ap-southeast-1' => "ap-southeast-1",
       'ap-southeast-2' =>"ap-southeast-2",
       'ap-northeast-1' =>"ap-northeast-1",
       'sa-east-1' => "sa-east-1"
  }

  def initialize region
    @region = REGION_MAPPING[region.name]
  end

  def storage
    AWSPricing::S3Storage.fetch(@region)
  end

  def data_transfer
    AWSPricing::S3DataTransfer.fetch(@region)
  end

  def requests
    AWSPricing::S3Requests.fetch(@region)
  end
end



