from flask import Flask , jsonify
from flask_restful import Resource,Api

app = Flask(__name__)

api=Api(app)

# set configuration
app.config.from_object('project.config.DevelopmentConfig')


class Ping(Resource):
    def get(self):
        return{
            'status':'success',
            'message':'pong!'
        }

api.add_resource(Ping,'/ping')