# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
  class Apimachinery::Apis::Meta::V1::ObjectMeta
    # Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: [http://kubernetes.io/docs/user-guide/annotations](http://kubernetes.io/docs/user-guide/annotations)
    property annotations : Hash(String, String) | Nil

    # The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.
    property cluster_name : String | Nil

    # CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.
    #
    # Populated by the system. Read-only. Null for lists. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property creation_timestamp : Time | Nil

    # Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.
    property deletion_grace_period_seconds : Int32 | Nil

    # DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field. Once set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.
    #
    # Populated by the system when a graceful deletion is requested. Read-only. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property deletion_timestamp : Time | Nil

    # Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed.
    property finalizers : Array(String) | Nil

    # GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.
    #
    # If this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).
    #
    # Applied only if Name is not specified. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#idempotency](https://git.k8s.io/community/contributors/devel/api-conventions.md#idempotency)
    property generate_name : String | Nil

    # A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.
    property generation : Int32 | Nil

    # An initializer is a controller which enforces some system invariant at object creation time. This field is a list of initializers that have not yet acted on this object. If nil or empty, this object has been completely initialized. Otherwise, the object is considered uninitialized and is hidden (in [list/watch and get calls) from clients that haven't explicitly asked to observe uninitialized objects.](list/watch and get calls) from clients that haven't explicitly asked to observe uninitialized objects.)
    #
    # When an object is created, the system will populate this list with the current set of initializers. Only privileged users may set or modify this list. Once it is empty, it may not be modified further by any user.
    property initializers : Apimachinery::Apis::Meta::V1::Initializers | Nil

    # Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: [http://kubernetes.io/docs/user-guide/labels](http://kubernetes.io/docs/user-guide/labels)
    property labels : Hash(String, String) | Nil

    # Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String | Nil

    # Namespace defines the space within each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.
    #
    # Must be a DNS_LABEL. Cannot be updated. More info: [http://kubernetes.io/docs/user-guide/namespaces](http://kubernetes.io/docs/user-guide/namespaces)
    property namespace : String | Nil

    # List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.
    property owner_references : Array(Apimachinery::Apis::Meta::V1::OwnerReference) | Nil

    # An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.
    #
    # Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency)
    property resource_version : String | Nil

    # SelfLink is a URL representing this object. Populated by the system. Read-only.
    property self_link : String | Nil

    # UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.
    #
    # Populated by the system. Read-only. More info: [http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)
    property uid : String | Nil

    ::YAML.mapping({
      annotations:                   {type: Hash(String, String), nilable: true, key: "annotations", getter: false, setter: false},
      cluster_name:                  {type: String, nilable: true, key: "clusterName", getter: false, setter: false},
      creation_timestamp:            {type: Time, nilable: true, key: "creationTimestamp", getter: false, setter: false},
      deletion_grace_period_seconds: {type: Int32, nilable: true, key: "deletionGracePeriodSeconds", getter: false, setter: false},
      deletion_timestamp:            {type: Time, nilable: true, key: "deletionTimestamp", getter: false, setter: false},
      finalizers:                    {type: Array(String), nilable: true, key: "finalizers", getter: false, setter: false},
      generate_name:                 {type: String, nilable: true, key: "generateName", getter: false, setter: false},
      generation:                    {type: Int32, nilable: true, key: "generation", getter: false, setter: false},
      initializers:                  {type: Apimachinery::Apis::Meta::V1::Initializers, nilable: true, key: "initializers", getter: false, setter: false},
      labels:                        {type: Hash(String, String), nilable: true, key: "labels", getter: false, setter: false},
      name:                          {type: String, nilable: true, key: "name", getter: false, setter: false},
      namespace:                     {type: String, nilable: true, key: "namespace", getter: false, setter: false},
      owner_references:              {type: Array(Apimachinery::Apis::Meta::V1::OwnerReference), nilable: true, key: "ownerReferences", getter: false, setter: false},
      resource_version:              {type: String, nilable: true, key: "resourceVersion", getter: false, setter: false},
      self_link:                     {type: String, nilable: true, key: "selfLink", getter: false, setter: false},
      uid:                           {type: String, nilable: true, key: "uid", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      annotations:                   {type: Hash(String, String), nilable: true, key: "annotations", getter: false, setter: false},
      cluster_name:                  {type: String, nilable: true, key: "clusterName", getter: false, setter: false},
      creation_timestamp:            {type: Time, nilable: true, key: "creationTimestamp", getter: false, setter: false},
      deletion_grace_period_seconds: {type: Int32, nilable: true, key: "deletionGracePeriodSeconds", getter: false, setter: false},
      deletion_timestamp:            {type: Time, nilable: true, key: "deletionTimestamp", getter: false, setter: false},
      finalizers:                    {type: Array(String), nilable: true, key: "finalizers", getter: false, setter: false},
      generate_name:                 {type: String, nilable: true, key: "generateName", getter: false, setter: false},
      generation:                    {type: Int32, nilable: true, key: "generation", getter: false, setter: false},
      initializers:                  {type: Apimachinery::Apis::Meta::V1::Initializers, nilable: true, key: "initializers", getter: false, setter: false},
      labels:                        {type: Hash(String, String), nilable: true, key: "labels", getter: false, setter: false},
      name:                          {type: String, nilable: true, key: "name", getter: false, setter: false},
      namespace:                     {type: String, nilable: true, key: "namespace", getter: false, setter: false},
      owner_references:              {type: Array(Apimachinery::Apis::Meta::V1::OwnerReference), nilable: true, key: "ownerReferences", getter: false, setter: false},
      resource_version:              {type: String, nilable: true, key: "resourceVersion", getter: false, setter: false},
      self_link:                     {type: String, nilable: true, key: "selfLink", getter: false, setter: false},
      uid:                           {type: String, nilable: true, key: "uid", getter: false, setter: false},
    }, true)

    def initialize(*, @annotations : Hash(String, String) | Nil = nil, @cluster_name : String | Nil = nil, @creation_timestamp : Time | Nil = nil, @deletion_grace_period_seconds : Int32 | Nil = nil, @deletion_timestamp : Time | Nil = nil, @finalizers : Array | Nil = nil, @generate_name : String | Nil = nil, @generation : Int32 | Nil = nil, @initializers : Apimachinery::Apis::Meta::V1::Initializers | Nil = nil, @labels : Hash(String, String) | Nil = nil, @name : String | Nil = nil, @namespace : String | Nil = nil, @owner_references : Array | Nil = nil, @resource_version : String | Nil = nil, @self_link : String | Nil = nil, @uid : String | Nil = nil)
    end
  end
end
