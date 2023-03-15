$venvName = ".env"

if (Test-Path $venvName)
{
    Write-Host "Virtual environment $venvName already exists."
} else
{
    Write-Host "Creating virtual environment $venvName"
    python -m venv $venvName
}

& ".\$venvName\Scripts\Activate.ps1"
pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu118
pip install git+https://github.com/huggingface/transformers.git@refs/pull/21955/merge
pip install sentencepiece

python .\src\llama.py