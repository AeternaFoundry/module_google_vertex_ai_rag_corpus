resource "google_vertex_ai_rag_corpus" "vertex_ai_rag_corpus" {
  for_each = var.vertex_ai_rag_corpus

  display_name    = each.value.display_name
  region          = each.value.region
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  project         = each.value.project

  dynamic "encryption_spec" {
    for_each = each.value.encryption_spec != null ? [each.value.encryption_spec] : []
    content {
      kms_key_name = encryption_spec.value.kms_key_name
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "vector_db_config" {
    for_each = each.value.vector_db_config != null ? [each.value.vector_db_config] : []
    content {
      dynamic "api_auth" {
        for_each = vector_db_config.value.api_auth != null ? [vector_db_config.value.api_auth] : []
        content {
          dynamic "api_key_config" {
            for_each = api_auth.value.api_key_config != null ? [api_auth.value.api_key_config] : []
            content {
              api_key_secret_version = api_key_config.value.api_key_secret_version
              api_key_string         = api_key_config.value.api_key_string
            }
          }
        }
      }
      dynamic "pinecone" {
        for_each = vector_db_config.value.pinecone != null ? [vector_db_config.value.pinecone] : []
        content {
          index_name = pinecone.value.index_name
        }
      }
      dynamic "rag_embedding_model_config" {
        for_each = vector_db_config.value.rag_embedding_model_config != null ? [vector_db_config.value.rag_embedding_model_config] : []
        content {
          dynamic "vertex_prediction_endpoint" {
            for_each = rag_embedding_model_config.value.vertex_prediction_endpoint != null ? [rag_embedding_model_config.value.vertex_prediction_endpoint] : []
            content {
              endpoint = vertex_prediction_endpoint.value.endpoint
            }
          }
        }
      }
      dynamic "rag_managed_db" {
        for_each = vector_db_config.value.rag_managed_db != null ? [vector_db_config.value.rag_managed_db] : []
        content {
          dynamic "ann" {
            for_each = rag_managed_db.value.ann != null ? [rag_managed_db.value.ann] : []
            content {
              leaf_count = ann.value.leaf_count
              tree_depth = ann.value.tree_depth
            }
          }
          dynamic "knn" {
            for_each = rag_managed_db.value.knn != null ? [rag_managed_db.value.knn] : []
            content {
            }
          }
        }
      }
      dynamic "vertex_vector_search" {
        for_each = vector_db_config.value.vertex_vector_search != null ? [vector_db_config.value.vertex_vector_search] : []
        content {
          index          = vertex_vector_search.value.index
          index_endpoint = vertex_vector_search.value.index_endpoint
        }
      }
    }
  }

  dynamic "vertex_ai_search_config" {
    for_each = each.value.vertex_ai_search_config != null ? [each.value.vertex_ai_search_config] : []
    content {
      serving_config = vertex_ai_search_config.value.serving_config
    }
  }
}

