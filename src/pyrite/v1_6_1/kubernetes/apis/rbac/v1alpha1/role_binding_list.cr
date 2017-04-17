# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# RoleBindingList is a collection of RoleBindings
class Pyrite::V1_6_1::Kubernetes::Apis::Rbac::V1alpha1::RoleBindingList
  # Items is a list of RoleBindings
  property items : Array(::Pyrite::V1_6_1::Kubernetes::Apis::Rbac::V1alpha1::RoleBinding)

  # Standard object's metadata.
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "RoleBindingList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Rbac::V1alpha1::RoleBinding), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "RoleBindingList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Rbac::V1alpha1::RoleBinding), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "RoleBindingList"
    @kind = "v1alpha1"
  end

  # create a RoleBinding
  def create_rbac_authorization_v1alpha1role_binding(metadata = nil)
  end

  # list or watch objects of kind RoleBinding
  def self.list_rbac_authorization_v1alpha1role_binding(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # delete collection of RoleBinding
  def self.delete_rbac_authorization_v1alpha1role_binding(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # list or watch objects of kind RoleBinding
  def self.list_rbac_authorization_v1alpha1role_binding_for_all_namespaces(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end
end
