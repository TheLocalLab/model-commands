#!/bin/bash

# Function to download models
download_models() {
    echo "Downloading models..."
    wget -O /app/fluxgym/models/unet/flux1-dev.sft https://huggingface.co/cocktailpeanut/xulf-dev/resolve/main/flux1-dev.sft?download=true
    wget -O /app/fluxgym/models/clip/clip_l.safetensors https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors?download=true
    wget -O /app/fluxgym/models/clip/t5xxl_fp16.safetensors https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors?download=true
    wget -O /app/fluxgym/models/vae/ae.sft https://huggingface.co/cocktailpeanut/xulf-dev/resolve/main/ae.sft?download=true
    echo "Models downloaded successfully."
}

# Check if models need to be downloaded
if [ "$DOWNLOAD_MODELS" = "true" ]; then
    download_models
else
    echo "Skipping model download as DOWNLOAD_MODELS is not set to true."
fi

# Execute the command passed to the script
exec "$@"
