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
        $command_field = $('#command-field');
        var validCmds = ["take", "examine", "drop", "look"];
        var cmdText = $command_field.val();
        var cmd = "";
        $command_field.val("");
        validCmds.forEach(function(validCmd)
        {
            if (cmdText.search(validCmd) > -1)
            {
                cmd = validCmd;
            }
        });
        if (cmd !== "")
        {
            if (cmd == "look")
            {
                location.reload();
            }
            else
            {
                var arg = cmdText.slice(cmd.length + 1, cmdText.length);
                if (arg !== "")
                {
                    $.get("/items/" + cmd + "/" + arg)
                        .done(function(data)
                        {
                            console.log(data);
                            $('#content-container').append(data);
                        });
                }
                else
                {
                    $('#content-container').append("<div class='error-message'>" +
                                                        "<p>" +
                                                            "It doesn't look like there's anything like that around here." +
                                                        "</p>" +
                                                    "</div>");
                }
            }
        }
        else
        {
                    $('#content-container').append("<div class='error-message'>" +
                                                        "<p>" +
                                                            "That is not a valid action." +
                                                        "</p>" +
                                                    "</div>");
        }
    });
});