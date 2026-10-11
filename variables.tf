variable "vertex_ai_rag_corpus" {
  description = <<EOT
Map of vertex_ai_rag_corpus, attributes below
Required:
    - display_name
    - region
Optional:
    - deletion_policy
    - description
    - project
    - encryption_spec (block):
        - kms_key_name (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - vector_db_config (block):
        - api_auth (optional, block):
            - api_key_config (optional, block):
                - api_key_secret_version (optional)
                - api_key_string (optional)
        - pinecone (optional, block):
            - index_name (required)
        - rag_embedding_model_config (optional, block):
            - vertex_prediction_endpoint (optional, block):
                - endpoint (required)
        - rag_managed_db (optional, block):
            - ann (optional, block):
                - leaf_count (optional)
                - tree_depth (optional)
            - knn (optional, block):
        - vertex_vector_search (optional, block):
            - index (required)
            - index_endpoint (required)
    - vertex_ai_search_config (block):
        - serving_config (required)
EOT

  type = map(object({
    display_name    = string
    region          = string
    deletion_policy = optional(string)
    description     = optional(string)
    project         = optional(string)
    encryption_spec = optional(object({
      kms_key_name = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    vector_db_config = optional(object({
      api_auth = optional(object({
        api_key_config = optional(object({
          api_key_secret_version = optional(string)
          api_key_string         = optional(string)
        }))
      }))
      pinecone = optional(object({
        index_name = string
      }))
      rag_embedding_model_config = optional(object({
        vertex_prediction_endpoint = optional(object({
          endpoint = string
        }))
      }))
      rag_managed_db = optional(object({
        ann = optional(object({
          leaf_count = optional(number)
          tree_depth = optional(number)
        }))
        knn = optional(object({
        }))
      }))
      vertex_vector_search = optional(object({
        index          = string
        index_endpoint = string
      }))
    }))
    vertex_ai_search_config = optional(object({
      serving_config = string
    }))
  }))
}

