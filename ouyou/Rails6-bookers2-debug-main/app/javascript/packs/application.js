// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "jquery"
import "popper.js"
import "bootstrap"

import '@fortawesome/fontawesome-free/js/all';
import "../stylesheets/application" 

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// require("chartkick") // 追記
// require("chart.js") // 追記

import Chart from 'chart.js/auto';
global.Chart = Chart;

import jQuery from "jquery"
import raty from 'raty-js'

global.$ = jQuery;
window.$ = jQuery;

 import Raty from "raty.js"
 window.raty = function(elem,opt){
    let raty =  new Raty(elem,opt)
    raty.init();
    return raty;
}
