# fastapi-boilerplate

Python 3.8 FastAPI project template to run as a Docker container or standalone using `uvicorn`.

## Getting Started

You can use the local files to build a Docker image using the `requirements.txt` file. Any change to the dependencies should be installed through pipenv and use the lock command to update the `requirements.txt` file.

```
pipenv lock -r > requirements.txt
docker build -t my-fast-api .
docker run -v "$(pwd)/api:/app" -p "8000:8000" my-fast-api
```

### Prerequisites

For local developement, you can install `pipenv` to setup your development environment as seen in the Installing section.

```
pip install pipenv
```

### Installing

This image is intended to run inside a Docker container.


If you want to run the server locally using the virtual environment and `uvicorn`

```
pipenv install --dev
cd ./api
pipenv run uvicorn --reload api:app
```

Once running, the OpenAPI documentation should be available at http://localhost:8000/docs


## Built With

* [FastAPI](https://fastapi.tiangolo.com/) - The async web framework used
* [Pydantic](https://pydantic-docs.helpmanual.io/) - Data validation and serialization
* [Click](https://click.palletsprojects.com/en/7.x/) - Used to build CLI commands
* [uvicorn](https://www.uvicorn.org/#quickstart) - ASGI server used with FastAPI
* [pytest](https://docs.pytest.org/en/stable/index.html) - Testing framework

