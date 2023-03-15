# LLaMa Model for Windows #

This README provides instructions on how to run the LLaMa model on a Windows machine, with support for both CPU and GPU.

## Instructions ##
Clone the repo and run ./launch.ps1.

```bash
git clone <repo_url>
cd <repo_folder>
./launch.ps1
```

This will create a virtual environment (venv), install the required packages, and run the script that will reveal the capital of Canada.

## Troubleshooting ##

If the script fails to run, ensure that you have the following packages installed:

```bash
pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu118
pip install git+https://github.com/huggingface/transformers.git@refs/pull/21955/merge
pip install sentencepiece
```

Then, run the llama.py script:

```bash
python .\src\llama.py
```