# eda-dados-basometro

Exploratory Data Analysis over data collected by estadao/basometro

# Set up (virtualenv)

Follow the instructions below to setup the development environment and all required packages used in this project

1. [Clone this repository](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository-from-github/cloning-a-repository) to a directory in your machine
2. Ensure you have conda installed and set up the environment:
```{console}
cd eda-dados-basometro
conda create --prefix .\venv python=3.9 -y
conda activate .\venv
conda config --set env_prompt '({name}) '
conda install pip
python -m pip install -r requirements.txt
```
The first time you run this build, it will take several minutes to complete. Trust me, it is better to run this and wait the building time than having to install each multiple python dependencies by hand and having to figure out why your colleague gets a weird and mysterious, previously unseen Exception when running the same code as you!

4. Still on the terminal, run Jupyter server with the command:
```{console}
jupyter lab
```

A URL will show up on your screen, either click on it or copy-paste to your browser and run the notebooks.
