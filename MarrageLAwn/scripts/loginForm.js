$(document).ready(function () {
    var move = "shrink";
    var flag_open_signup = false;
    var flag_open_login = false;

    $("#down").click(function () {
        
        $('html,body').animate({
            scrollTop: $("#data").offset().top+20
        },
            'slow');
    });
    $('#signup').click(function () {
        if (!flag_open_signup) {
            flag_open_signup = true;
            flag_open_login = true;
            document.getElementById('Button0').style.backgroundColor = "#333";
            document.getElementById('Button').style.backgroundColor = "rgba(0,0,0,0.4)";
            $('#SnavBottom').css("opacity", 0);
            if (move == "expand") {
                $('#form').animate({ width: "0px", height: "0px" }, 500);
                move = "shrink";
                
            } else {
                $('#form').animate({ width: "300px", height: "400px" }, 500);
                move = "expand";
                $('#Button1').hide();
                $('#Button2').hide();
                $('#scroll').hide();
                $('#Img1').css('filter', 'Blur(10px)');
                $('#Img2').css('filter', 'Blur(10px)');
                $('#Img3').css('filter', 'Blur(10px)');
                $('#Img4').css('filter', 'Blur(10px)');
                $('#Img5').css('filter', 'Blur(10px)');
                $('#Img6').css('filter', 'Blur(10px)');
                $('#Button0').css("opacity", 1);
                $('#Button').css("opacity", 1);
                $('#fb').css("opacity", 1);
                $('#twitter').css("opacity", 1);
                
                
                }
        }
    });

    $('#signin').click(function () {
        
            flag_open_login = true;
            flag_open_signup = true;
            document.getElementById('Button').style.backgroundColor = "rgba(0,0,0,0.4)";
            document.getElementById('Button0').style.backgroundColor = "#333";
            $('#SnavBottom').css("opacity", 0);

            if (move == "expand") {
                $('#form').animate({ width: "0px", height: "0px" }, 500);
                move = "shrink";
                $('#SnavBottom').css("opacity", 1);
                $('#r_username').hide();
                $('#r_password').hide();
                $('#r_c_password').hide();
                $('#signup_button').hide();
                $('#username').hide();
                $('#password').hide();
                $('#Button3').hide();
                $('#fb').hide();
                $('#twitter').hide();
                $('.formButton').hide();
                $('#scroll').show();
                $('#Img1').css('filter', 'Blur(0px)');
                $('#Img2').css('filter', 'Blur(0px)');
                $('#Img3').css('filter', 'Blur(0px)');
                $('#Img4').css('filter', 'Blur(0px)');
                $('#Img5').css('filter', 'Blur(0px)');
                $('#Img6').css('filter', 'Blur(0px)');
            } else {
                $('#form').animate({ width: "300px", height: "400px" }, 500);
                move = "expand";
                $('#Button1').hide();
                $('#Button2').hide();
                $('#scroll').hide();
                $('#Img1').css('filter', 'Blur(10px)');
                $('#Img2').css('filter', 'Blur(10px)');
                $('#Img3').css('filter', 'Blur(10px)');
                $('#Img4').css('filter', 'Blur(10px)');
                $('#Img5').css('filter', 'Blur(10px)');
                $('#Img6').css('filter', 'Blur(10px)');
                $('#Button0').css("opacity", 1);
                $('#Button').css("opacity", 1);
                $('#fb').css("opacity", 1);
                $('#twitter').css("opacity", 1);
                $('#username').css("opacity", 1);
                $('#password').css("opacity", 1);
                $('#Button3').css("opacity", 1);
                $('#r_username').hide();
                $('#r_password').hide();
                $('#r_c_password').hide();
                $('#signup_button').hide();
            }
        
    });
    
    
});
function login() {
    document.getElementById('Button0').style.backgroundColor = "#333";
    document.getElementById('Button').style.backgroundColor = "rgba(0,0,0,0.4)";
    $('#r_username').hide();
    $('#r_password').hide();
    $('#r_c_password').hide();
    $('#signup_button').hide();

    $('#username').css("opacity", 1);
    $('#password').css("opacity", 1);
    $('#Button3').css("opacity", 1);
    $('#username').show();
    $('#password').show();
    $('#Button3').show();
}
function signup() {
    document.getElementById('Button').style.backgroundColor = "#333";
    document.getElementById('Button0').style.backgroundColor = "rgba(0,0,0,0.4)";
    $('#r_username').show();
    $('#r_password').show();
    $('#r_c_password').show();
    $('#signup_button').show();
    $('#r_username').css("opacity", 1);
    $('#r_password').css("opacity", 1);
    $('#r_c_password').css("opacity", 1);
    $('#signup_button').css("opacity", 1);
    $('#username').hide();
    $('#password').hide();
    $('#Button3').hide();
}
