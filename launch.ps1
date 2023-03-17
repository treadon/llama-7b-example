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
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
pip install -r .\requirements.txt

python .\src\llama.py