FROM runpod/pytorch:2.1.0-py3.10-cuda11.8.0-devel

WORKDIR /workspace

RUN apt-get update && apt-get install -y ffmpeg git

# Clone ตัวเอง
RUN git clone https://github.com/aiunlocked1412/FramePack-AiUnlocked.git .

RUN pip install --upgrade pip && pip install -r requirements.txt

CMD ["python", "demo_gradio.py", "--server", "0.0.0.0", "--port", "8188"]