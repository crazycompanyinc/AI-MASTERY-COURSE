# Laboratorio práctico: Speech, Audio y Música

## Whisper

```bash
pip install openai-whisper
```

```python
import whisper
model = whisper.load_model("base")
result = model.transcribe("audio.mp3")
print(result["text"])
```

## edge-tts

```bash
pip install edge-tts
```

```python
import asyncio, edge_tts
async def main():
    tts = edge_tts.Communicate("Hola mundo", "es-ES-AlvaroNeural")
    await tts.save("output.mp3")
asyncio.run(main())
```

## Espectrograma

```python
import librosa, matplotlib.pyplot as plt
y, sr = librosa.load("audio.wav")
S = librosa.feature.melspectrogram(y=y, sr=sr)
librosa.display.specshow(librosa.power_to_db(S, ref=np.max))
plt.show()
```
