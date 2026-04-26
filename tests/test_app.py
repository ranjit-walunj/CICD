import pytest
from app import app

@pytest.fixture
def client():
    with app.test_client() as client:
        yield client

def test_hello(client):
    """Test the home route."""
    rv = client.get('/')
    assert rv.status_code == 200
    assert rv.get_json() == {"message": "Hello, CI/CD!"}

def test_health(client):
    """Test the health check route."""
    rv = client.get('/health')
    assert rv.status_code == 200
    assert rv.get_json() == {"status": "healthy"}
