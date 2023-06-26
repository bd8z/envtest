# 01.setting
$venvuud = [Guid]::NewGuid().ToString()
$venvFolder = "venv_" + $venvuud

# 02.build venv environment
python -m venv $venvFolder
& (".\" + $venvFolder + "\Scripts\Activate.ps1")

# 03.python
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python -m pip list

python main.py $venvuud

# 04.end
deactivate
Remove-item -Force $venvFolder -Recurse