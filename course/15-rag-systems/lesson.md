# Lección: RAG Systems

## Objetivo
Comprender y construir sistemas RAG que combinan LLMs con bases de conocimiento externas.

## Contenido

### ¿Por qué RAG?
- Los LLMs tienen knowledge cutoff
- Pueden alucinar
- No saben de datos privados
- RAG resuelve esto

### Arquitectura RAG
1. **Indexación**: Cargar documentos → chunking → embeddings → almacenar
2. **Recuperación**: Query → embedding → búsqueda vectorial → top-k chunks
3. **Generación**: Prompt con contexto recuperado → LLM → respuesta

### Componentes
- Document loaders (PDF, web, databases)
- Text splitters (recursive, semantic)
- Embedding models
- Vector stores
- Retrievers (similarity, MMR, hybrid)
- Rerankers
- LLMs

### Técnicas avanzadas
- HyDE (Hypothetical Document Embeddings)
- Query expansion
- Multi-query retrieval
- Parent-child chunking
- Reranking
- Hybrid search (sparse + dense)
- Self-RAG
- Corrective RAG

### Frameworks
- LangChain
- LlamaIndex
- Haystack
- DSPy

## Referencias
- Lewis et al. (2020). Retrieval-Augmented Generation for Knowledge-Intensive NLP Tasks.
- LangChain RAG docs: https://python.langchain.com/docs/tutorials/rag/
