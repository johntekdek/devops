import json

def test_add_json(test_app,test_database):
    client = test_app.test_client()
    # post to the endpoint
    resp = client.post('/users',
        data=json.dumps(
            {
                'username':'michael',
                'email': 'michael@testdriven.io'
            }
        ),content_type='application/json',)

    # get the data from the endpoint
    data = json.loads(resp.data.decode())

    assert resp.status_code == 201
    assert 'michael@testdriven.io was added!' in data['message']
    assert 'success' in data['status']