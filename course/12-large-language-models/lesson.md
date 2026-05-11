# Lección: Large Language Models

## Objetivo
Comprender qué son los LLMs, cómo se entrenan, y cómo usarlos.

## ¿Qué es un LLM?
Una red neuronal (Transformer) entrenada en enormes cantidades de texto para predecir el siguiente token.

## Entrenamiento
1. **Pre-entrenamiento**: predecir siguiente token en texto de internet
2. **SFT**: aprender a seguir instrucciones
3. **RLHF**: alinear con preferencias humanas

## Técnicas de eficiencia
- **Quantization**: FP32 → INT8 → INT4
- **LoRA**: fine-tuning eficiente con adaptadores
- **Distillation**: modelo pequeño imita a grande

## Prompt Engineering
- Zero-shot, Few-shot
- Chain-of-thought
- System prompts

## Despliegue
- API (OpenAI, Anthropic)
- Self-hosted (vLLM, Ollama)
- Edge (llama.cpp)

## Referencias
- Brown et al. (2020). GPT-3.
- Ouyang et al. (2022). RLHF.
- Hu et al. (2021). LoRA.
