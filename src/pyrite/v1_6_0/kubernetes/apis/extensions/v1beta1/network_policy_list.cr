# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Network Policy List is a list of NetworkPolicy objects.
class Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicyList
  # Items is a list of schema objects.
  property items : Array(::Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicy)

  # Standard list metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "NetworkPolicyList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicy), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "NetworkPolicyList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicy), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "NetworkPolicyList"
    @kind = "v1beta1"
  end

  # list or watch objects of kind NetworkPolicy
  def self.get(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # create a NetworkPolicy
  def self.create(pretty : String?, metadata = nil, spec = nil, namespace : String = "default")
  end

  # delete collection of NetworkPolicy
  def self.delete(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # list or watch objects of kind NetworkPolicy
  def self.get(field_selector : String?, label_selector : String?, pretty : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end
end