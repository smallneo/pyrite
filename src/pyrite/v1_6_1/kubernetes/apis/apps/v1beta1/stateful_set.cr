# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# StatefulSet represents a set of pods with consistent identities.Identities are defined as:
#  - Network: A single stable DNS and hostname.
#  - Storage: As many VolumeClaims as requested.
# The StatefulSet guarantees that a given network identity will always map to the same storage identity.
class Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::StatefulSet
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the desired identities of pods in this set.
  property spec : ::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec

  # Status is the current status of Pods in this StatefulSet.This data may be out of date by some window of time.
  property status : ::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus

  YAML.mapping({
    api_version: {type: String, default: "StatefulSet", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "StatefulSet", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "StatefulSet"
    @kind = "v1beta1"
  end

  # create a StatefulSet
  def create
  end

  # list or watch objects of kind StatefulSet
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # delete collection of StatefulSet
  def self.delete(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified StatefulSet
  def self.read(exact : Bool?, export : Bool?, name : String, namespace : String = "default")
  end

  # replace the specified StatefulSet
  def replace
  end

  # partially update the specified StatefulSet
  def patch
  end

  # delete a StatefulSet
  def delete(grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end

  # read status of the specified StatefulSet
  def self.read_status(name : String, namespace : String = "default")
  end

  # replace status of the specified StatefulSet
  def replace_status
  end

  # partially update status of the specified StatefulSet
  def patch_status
  end
end
