
# Django TODO Web App

A TODO Web App with Django Backend. It's a fully CRUD application.




## Installation

Clone the git repository
1. 

```bash
  git clone https://github.com/appykr/todo_app.git
  cd todo_app
```
    
2. Create a virtual env in the root directory

```bash
  python -m venv venv
```

3. Activate virtual environment. If you are using bash terminal use the command below

```bash
  source venv/Scripts/activate
```

4. Installing requirements
```bash
  pip install -r requirements.txt
```
5. Load the environment variable. Open the settings.py and write the below line on the top
```bash
import os
from dotenv import load_dotenv
load_dotenv()
```
6. Create a file .env on the project level and include your Secret Key. You can use online Secret Key generator for Django
```bash
    SECRET_KEY=Your_SECRET_KEY_GOES_HERE

    Note : Put the secret key without quotes ""
```

5. Running the project
    
```bash
    python manage.py runserver
```




## TECH
Python , Django Web Framework, Bootstrap
