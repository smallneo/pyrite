# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ConfigMap holds configuration data for pods to consume.
class Pyrite::V1_6_0::Kubernetes::Api::V1::ConfigMap
  # Data contains the configuration data.Each key must be a valid DNS_SUBDOMAIN with an optional leading dot.
  property data : Hash(String, String)?

  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  YAML.mapping({
    api_version: {type: String, default: "ConfigMap", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    data:        {type: Hash(String, String), nilable: true, key: data, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ConfigMap", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    data:        {type: Hash(String, String), nilable: true, key: data, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@data = nil, @metadata = nil)
    @api_version = "ConfigMap"
    @kind = "v1"
  end

  # create a ConfigMap
  def create
  end

  # list or watch objects of kind ConfigMap
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # delete collection of ConfigMap
  def self.delete(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified ConfigMap
  def self.read(exact : Bool?, export : Bool?, name : String, namespace : String = "default")
  end

  # replace the specified ConfigMap
  def replace
  end

  # partially update the specified ConfigMap
  def patch
  end

  # delete a ConfigMap
  def delete(grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end
end
