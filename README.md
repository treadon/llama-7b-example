# LLaMa Model for Windows #

This README provides instructions on how to run the LLaMa model on a Windows machine, with support for both CPU and GPU.

## Instructions ##
Clone the repo and run ./launch.ps1.

```bash
git clone git@github.com:treadon/llama-7b-example.git
cd llama-7b-example
./launch.ps1
```

This will create a virtual environment (venv), install the required packages, and run the script that will reveal the capital of Canada.

## Troubleshooting ##

If the script fails to run, ensure that you have the following packages installed, be sure it install transformers from source!

```bash
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
pip install git+https://github.com/huggingface/transformers
pip install sentencepiece
```

Then, run the llama.py script:

```bash
python .\src\llama.py
```
