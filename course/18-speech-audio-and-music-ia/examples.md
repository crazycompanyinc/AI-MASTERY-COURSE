# Ejemplos: Speech, Audio y Música

```python
# Whisper
import whisper
model = whisper.load_model("base")
result = model.transcribe("audio.mp3")
print(result["text"])
```

```python
# edge-tts
import edge_tts
await edge_tts.Communicate("Hola mundo", "es-ES-AlvaroNeural").save("output.mp3")
```

```python
# AudioCraft
from audiocraft.models import MusicGen
model = MusicGen.get_pretrained('small')
audio = model.generate(["Piano jazz suave"])
```
