part of dd_js_util;


void ifCall(bool value,VoidCallback call){
  if(value) call.call();
}

