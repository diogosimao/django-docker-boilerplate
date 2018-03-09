# Your App

The goal of your app.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Things you need to have installed:

* pipenv
* [Docker](https://docs.docker.com/installation/)

or

* pipenv
* Python3
* PostgreSQL

### Installing

This is a quick project setup for local machine and development purpose to get server up at `http://0.0.0.0:8000/`.

* Clone this [repo](git@github.com:diogosimao/django-docker-boilerplate.git).

        $ git clone git@github.com:diogosimao/django-docker-boilerplate.git your-app

* Create a virtual environment. Make sure you have [pipenv](https://github.com/pypa/pipenv) installed.

        $ cd your-app
    
        $ pipenv --three && pipenv shell
    
#### Choose docker or continue with pipenv setup mode

##### If docker:

It will need some extras. See `requirements_docker.txt`

        $ pip install -r requirements_docker.txt
        
        $ . ./bin/start-docker-development-server.sh
        
##### If pipenv

* Create database on PostgreSQL

        $ createdb your-app

* With a shortcut just edit `./bin/start-development-server.sh` with your DB system info and run the shell script.

* Or without the `script` follow ahead with:

        $ pip install -r requirements.txt
       
    * Set `DATABASE_URL` environment variable:

            $ export DATABASE_URL=pgsql://YOUR_USER:YOUR_PWD@127.0.0.1:5432/your-app
    
    * Run Django `makemigration` and `migrate`:
    
            $ python manage.py makemigrations
            $ python manage.py migrate
    
    * Run the development server

            $ python manage.py runserver

## Administration Screen

* Create `superuser` with the following line:

        $ python manage.py createsuperuser

Default Django administration screen should be up at `http://0.0.0.0:8000/admin` and you are able to login in.
    
## Running the tests

From `your-app` directory with `pipenv --three` and `pipenv shell` previously executed:

    $ pip install -r requirements.txt

### Unittests

To run the unittests for this system locally:
    
    $ python manage.py test

In case you want to see code coverage the `htmlcov` folder (which contains html output from `coverage` package) will be created after running:

    $ . ./bin/run-tests.sh

### Functional tests

Do you have `geckodrive` install for `Firefox`? If not see [jq](https://github.com/stedolan/jq/wiki/Installation).

After than install it with:
    
    $ . ./bin/geckodrive-install.sh
    
and

    $ python tests/functional/tests.py

## Built With

* [Django 2.0](https://docs.djangoproject.com/en/2.0/releases/2.0/) - The web framework used
* [Bootstrap4](https://getbootstrap.com/) - An open source toolkit for developing with HTML, CSS, and JS. 
    * Via [django-bootstrap4](https://readthedocs.org/projects/django-bootstrap4/)
* [font-awesome](https://fontawesome.com/icons)
    * Via [django-icons](https://github.com/zostera/django-icons) 
* and <3

## Author

* **Diogo Simão**

## Acknowledgments

* My folks
