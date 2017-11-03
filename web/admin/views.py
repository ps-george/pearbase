from . import admin
import datetime


import flask_login

from flask import (
    Flask,
    abort,
    redirect,
    render_template,
    request,
    send_file,
    jsonify,
    url_for, Response
)

@admin.route('/', methods=['GET'])
@flask_login.login_required
def users():
    
    return render_template('index.html', title='Home')
