#!/bin/bash

# Download model files
wget -O /app/fluxgym/models/unet/flux1-dev.sft https://huggingface.co/cocktailpeanut/xulf-dev/resolve/main/flux1-dev.sft?download=true
wget -O /app/fluxgym/models/clip/clip_l.safetensors https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors?download=true
wget -O /app/fluxgym/models/clip/t5xxl_fp16.safetensors https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors?download=true
wget -O /app/fluxgym/models/vae/ae.sft https://huggingface.co/cocktailpeanut/xulf-dev/resolve/main/ae.sft?download=true

# Execute the application
exec python /app/fluxgym/app.py
