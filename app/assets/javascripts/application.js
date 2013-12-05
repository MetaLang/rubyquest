// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$('document').ready(function()
{
    $('#command-button').on('click', function(ev)
    {
        var validCmds = ["take", "examine", "drop", "look"];
        var cmdText = $('#command-field').val();
        var words = cmdText.split(" ");
        if ((words.length == 1 || words.length == 2) && (validCmds.indexOf(words[0]) > -1))
        {
            if (words[0] == "look")
            {
                location.reload();
            }
            else
            {
                var arg = words[1];
                $.get("/items/" + words[0] + "/" + words[1])
                    .done(function(data)
                    {
                        console.log(data);
                        $('#content-container').append(data);
                    });
            }
        }
    });
});