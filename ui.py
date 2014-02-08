from flask import Flask, Blueprint, Response, jsonify, request, abort, send_file, render_template


mod = Blueprint('ui', __name__, url_prefix='/ui', template_folder='templates', static_folder='static')


@mod.route('/', methods=['GET'])
def index():
    return render_template('index.html')

