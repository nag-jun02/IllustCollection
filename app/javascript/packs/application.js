// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require bootstrap/dist/css/bootstrap.min.css
//= require_tree .
//= require_self

Rails.start()
Turbolinks.start()
ActiveStorage.start()

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery");
require("bootstrap"); 
require('./app.js');
require('bootstrap/dist/js/bootstrap.min.js')


import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import 'bootstrap';
import '../stylesheets/application.scss';
import "application.css";
import "illusts.css";
import "users.css";
import "signup.css";
