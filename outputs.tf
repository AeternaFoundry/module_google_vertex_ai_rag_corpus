output "vertex_ai_rag_corpus_id" {
  description = "Map of id values across all vertex_ai_rag_corpus, keyed the same as var.vertex_ai_rag_corpus except keys with no id are omitted"
  value       = { for k, v in google_vertex_ai_rag_corpus.vertex_ai_rag_corpus : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vertex_ai_rag_corpus_corpus_status" {
  description = "Map of corpus_status values across all vertex_ai_rag_corpus, keyed the same as var.vertex_ai_rag_corpus except keys with no corpus_status are omitted"
  value       = { for k, v in google_vertex_ai_rag_corpus.vertex_ai_rag_corpus : k => v.corpus_status if v.corpus_status != null && length(v.corpus_status) > 0 }
}
output "vertex_ai_rag_corpus_create_time" {
  description = "Map of create_time values across all vertex_ai_rag_corpus, keyed the same as var.vertex_ai_rag_corpus except keys with no create_time are omitted"
  value       = { for k, v in google_vertex_ai_rag_corpus.vertex_ai_rag_corpus : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "vertex_ai_rag_corpus_deletion_policy" {
  description = "Map of deletion_policy values across all vertex_ai_rag_corpus, keyed the same as var.vertex_ai_rag_corpus except keys with no deletion_policy are omitted"
  value       = { for k, v in google_vertex_ai_rag_corpus.vertex_ai_rag_corpus : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "vertex_ai_rag_corpus_description" {
  description = "Map of description values across all vertex_ai_rag_corpus, keyed the same as var.vertex_ai_rag_corpus except keys with no description are omitted"
  value       = { for k, v in google_vertex_ai_rag_corpus.vertex_ai_rag_corpus : k => v.description if v.description != null && length(v.description) > 0 }
}
output "vertex_ai_rag_corpus_display_name" {
  description = "Map of display_name values across all vertex_ai_rag_corpus, keyed the same as var.vertex_ai_rag_corpus except keys with no display_name are omitted"
  value       = { for k, v in google_vertex_ai_rag_corpus.vertex_ai_rag_corpus : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "vertex_ai_rag_corpus_encryption_spec" {
  description = "Map of encryption_spec values across all vertex_ai_rag_corpus, keyed the same as var.vertex_ai_rag_corpus except keys with no encryption_spec are omitted"
  value       = { for k, v in google_vertex_ai_rag_corpus.vertex_ai_rag_corpus : k => one(v.encryption_spec) if v.encryption_spec != null && length(v.encryption_spec) > 0 }
}
output "vertex_ai_rag_corpus_name" {
  description = "Map of name values across all vertex_ai_rag_corpus, keyed the same as var.vertex_ai_rag_corpus except keys with no name are omitted"
  value       = { for k, v in google_vertex_ai_rag_corpus.vertex_ai_rag_corpus : k => v.name if v.name != null && length(v.name) > 0 }
}
output "vertex_ai_rag_corpus_project" {
  description = "Map of project values across all vertex_ai_rag_corpus, keyed the same as var.vertex_ai_rag_corpus except keys with no project are omitted"
  value       = { for k, v in google_vertex_ai_rag_corpus.vertex_ai_rag_corpus : k => v.project if v.project != null && length(v.project) > 0 }
}
output "vertex_ai_rag_corpus_region" {
  description = "Map of region values across all vertex_ai_rag_corpus, keyed the same as var.vertex_ai_rag_corpus except keys with no region are omitted"
  value       = { for k, v in google_vertex_ai_rag_corpus.vertex_ai_rag_corpus : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vertex_ai_rag_corpus_update_time" {
  description = "Map of update_time values across all vertex_ai_rag_corpus, keyed the same as var.vertex_ai_rag_corpus except keys with no update_time are omitted"
  value       = { for k, v in google_vertex_ai_rag_corpus.vertex_ai_rag_corpus : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "vertex_ai_rag_corpus_vector_db_config" {
  description = "Map of vector_db_config values across all vertex_ai_rag_corpus, keyed the same as var.vertex_ai_rag_corpus except keys with no vector_db_config are omitted"
  value       = { for k, v in google_vertex_ai_rag_corpus.vertex_ai_rag_corpus : k => one(v.vector_db_config) if v.vector_db_config != null && length(v.vector_db_config) > 0 }
  sensitive   = true
}
output "vertex_ai_rag_corpus_vertex_ai_search_config" {
  description = "Map of vertex_ai_search_config values across all vertex_ai_rag_corpus, keyed the same as var.vertex_ai_rag_corpus except keys with no vertex_ai_search_config are omitted"
  value       = { for k, v in google_vertex_ai_rag_corpus.vertex_ai_rag_corpus : k => one(v.vertex_ai_search_config) if v.vertex_ai_search_config != null && length(v.vertex_ai_search_config) > 0 }
}

