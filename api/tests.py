from httpx import AsyncClient
import pytest


# Import FastAPI instance
from api import app


@pytest.mark.asyncio
async def test_root():
    """ Test /root endpoint """
    async with AsyncClient(app=app, base_url="http://localhost:8000") as ac:
        response = await ac.get("/")

    assert response.status_code == 200
    assert response.json() == {"hello": "world"}
