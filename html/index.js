$(function () {
    function display(bool) {
        if (bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        } else  if (item.type === "checkevent") {
            if (event.data.claimed === event.data.daytoday) {
                var d = new Date();
                var dd = d.getDate();
                var tag = "#i" + dd;
                $(tag).css( "display", "none" );
            } else {
            }
        }
    })
    // if the person uses the escape key, it will exit the resource
    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('http://gusti-event/exit', JSON.stringify({}));
            return
        }
    };

    $( window ).load(function() {
        var d = new Date();
        var dd = d.getDate();
        var tag = "#i" + dd;
        $(tag).css( "display", "block" );
      });
	
	
    //when the user clicks on the submit button, it will run
$("#submit").click(function () {
    $.post('http://gusti-event/main', JSON.stringify({
    }));
    return;
})


$("#close").click(function () {
$.post('http://gusti-event/exit', JSON.stringify({}));
return
})
	
	
$("#i1").click(function () {
$.post('http://gusti-event/i1', JSON.stringify({}));
return
})

$("#i2").click(function () {
$.post('http://gusti-event/i2', JSON.stringify({}));
return
})

$("#i3").click(function () {
$.post('http://gusti-event/i3', JSON.stringify({}));
return
})

$("#i4").click(function () {
$.post('http://gusti-event/i4', JSON.stringify({}));
return
})

$("#i5").click(function () {
$.post('http://gusti-event/i5', JSON.stringify({}));
return
})

$("#i6").click(function () {
$.post('http://gusti-event/i6', JSON.stringify({}));
return
})

$("#i7").click(function () {
$.post('http://gusti-event/i7', JSON.stringify({}));
return
})

$("#i8").click(function () {
$.post('http://gusti-event/i8', JSON.stringify({}));
return
})

$("#i9").click(function () {
$.post('http://gusti-event/i9', JSON.stringify({}));
return
})

$("#i10").click(function () {
$.post('http://gusti-event/i10', JSON.stringify({}));
return
})

$("#i11").click(function () {
$.post('http://gusti-event/i11', JSON.stringify({}));
return
})

$("#i12").click(function () {
$.post('http://gusti-event/i12', JSON.stringify({}));
return
})

	$("#i13").click(function () {
$.post('http://gusti-event/i13', JSON.stringify({}));
return
})

$("#i14").click(function () {
$.post('http://gusti-event/i14', JSON.stringify({}));
return
})

$("#i15").click(function () {
$.post('http://gusti-event/i15', JSON.stringify({}));
return
})

$("#i16").click(function () {
$.post('http://gusti-event/i16', JSON.stringify({}));
return
})

$("#i17").click(function () {
$.post('http://gusti-event/i17', JSON.stringify({}));
return
})

$("#i18").click(function () {
$.post('http://gusti-event/i18', JSON.stringify({}));
return
})

	$("#i19").click(function () {
$.post('http://gusti-event/i19', JSON.stringify({}));
return
})

$("#i20").click(function () {
$.post('http://gusti-event/i20', JSON.stringify({}));
return
})

$("#i21").click(function () {
$.post('http://gusti-event/i21', JSON.stringify({}));
return
})

$("#i22").click(function () {
$.post('http://gusti-event/i22', JSON.stringify({}));
return
})

$("#i23").click(function () {
$.post('http://gusti-event/i23', JSON.stringify({}));
return
})

$("#i24").click(function () {
$.post('http://gusti-event/i24', JSON.stringify({}));
return
})

})