# Lección: Deep Learning

## Objetivo
Comprender las redes neuronales profundas: cómo funcionan, cómo se entrenan, y las arquitecturas principales.

## La neurona artificial
output = f(w·x + b) donde f es la función de activación.

## Backpropagation
Forward pass → Calcular pérdida → Backward pass → Actualizar pesos.

## Funciones de activación
- ReLU: max(0, x) - la más usada
- Sigmoid: 1/(1+e^(-x)) - para probabilidades
- GELU: usada en BERT, GPT

## CNN
Convoluciones para datos espaciales. Arquitecturas: AlexNet, ResNet, EfficientNet.

## RNN/LSTM
Para secuencias. LSTM resuelve vanishing gradient con gates.

## Transformers
Self-attención: cada token atiende a todos los demás. Base de toda la IA moderna.

## Referencias
- Goodfellow et al. (2016). Deep Learning.
- Vaswani et al. (2017). Attention Is All You Need.
