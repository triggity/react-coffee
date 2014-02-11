from flask import Flask, Blueprint, Response, jsonify, request, abort, send_file, render_template


mod = Blueprint('ui', __name__, url_prefix='/ui', template_folder='templates', static_folder='static')


@mod.route('/runs', methods=['GET'])
def runs():
    return render_template('runs.html')

@mod.route('/run/<int:run_id>', methods=['GET', 'DELETE'])
def run_id(run_id):
    return render_template('run.html', runid=run_id)
