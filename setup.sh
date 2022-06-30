#!/usr/bin/bash
python3 -m venv env
source env/bin/activate
echo "export JUPYTER_CONFIG_DIR=env/share/jupyter/lab/" >> env/bin/activate

pip install wheel==0.37.1 jupyterlab==3.2.8
python3 -m ipykernel install --user --name=env
echo "c.MappingKernelManager.default_kernel_name='env'" >> env/share/jupyter/lab/jupyter_lab_config.py

pip install -r requirements.txt

mkdir -p env/share/jupyter/lab/lab/user-settings >/dev/null 2>&1
echo "{     \"@jupyterlab/notebook-extension:tracker\": {         \"recordTiming\": true     } }" >> env/share/jupyter/lab/lab/user-settings/overrides.json


jupyter labextension enable jupyterlab_execute_time

