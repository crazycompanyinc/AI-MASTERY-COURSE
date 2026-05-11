# Lección: Transformers

## Objetivo
Comprender en profundidad la arquitectura Transformer.

## Self-Attention
Attention(Q,K,V) = softmax(QK^T / √d_k)V

- Query: ¿Qué busco?
- Key: ¿Qué ofrezco?
- Value: ¿Qué doy?

## Multi-Head Attention
Múltiples atenciones en paralelo, cada una aprendiendo diferentes relaciones.

## Positional Encoding
Inyecta información de posición (senos/cosenos o learned).

## Arquitectura
- Encoder (BERT): bidireccional
- Decoder (GPT): autoregresivo con causal mask
- Encoder-Decoder (T5): ambos

## Variantes modernas
- Flash Attention: eficiente en memoria
- GQA: Grouped-Query Attention
- RoPE: Rotary Position Embedding

## Referencias
- Vaswani et al. (2017). Attention Is All You Need.
- Dao et al. (2022). FlashAttention.
