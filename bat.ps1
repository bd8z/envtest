# build venv
python -m venv venv
.\venv\Scripts\Activate.ps1

#venv
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python -m pip list

python main.py
# deactivate
Remove-item -Force venv -Recurse