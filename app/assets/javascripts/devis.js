// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function() {
  $('#s3-uploader').S3Uploader(
    {
      remove_completed_progress_bar: false,
      progress_bar_target: $('#uploads_container'),
      before_add: function(file) {
        if (file.size > 30485760) {
          alert('Maximum file size is 30 MB');
          return false;
        } else {
          return true;
        }
      }
    }
  );

  // error handling
  $('#s3-uploader').bind('s3_upload_failed', function(e, content) {
    return alert(content.filename + ' failed to upload.');
  });
});