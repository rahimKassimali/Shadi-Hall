var nrImg = 6;  //the number of img , I only have 3 
var IntSeconds = 4;     //the seconds between the imgs

function Load() {
    nrShown = 0;    //the img visible
    Vect = new Array(nrImg + 10);
    Vect[0] = document.getElementById("Img1");
    Vect[0].style.visibility = "visible";
    //document.getElementById("S" + 0).style.visibility = "visible";

    for (var i = 1; i < nrImg; i++) {
        Vect[i] = document.getElementById("Img" + (i + 1));
      //  document.getElementById("S" + i).style.visibility = "visible";
    }

    //document.getElementById("S" + 0).style.backgroundColor = "rgba(255, 255, 255, 0.90)";
    document.getElementById('Button0').style.backgroundColor = "#333";
    document.getElementById('Button').style.backgroundColor = "rgba(0,0,0,0.4)";
    mytime = setInterval(Timer, IntSeconds * 5000);
    next();
}
function Timer() {
    nrShown++;
    if (nrShown == nrImg)
        nrShown = 0;
    Effect();
}
//next img
function next() {
    nrShown++;
    if (nrShown == nrImg)
        nrShown = 0;
    Effect();

    clearInterval(mytime);
    mytime = setInterval(Timer, IntSeconds * 1000);
}
function prev() {
    nrShown--;
    if (nrShown == -1)
        nrShown = nrImg - 1;
    Effect();

    clearInterval(mytime);
    mytime = setInterval(Timer, IntSeconds * 1000);
}
//here changes the img + effect
function Effect() {
    for (var i = 0; i < nrImg; i++) {
        Vect[i].style.opacity = "0";   //to add the fade effect
        Vect[i].style.visibility = "hidden";

     //   document.getElementById("S" + i).style.backgroundColor = "rgba(0, 0, 0, 0.70)";
    }
    Vect[nrShown].style.opacity = "1";
    Vect[nrShown].style.visibility = "visible";
    //document.getElementById("S" + nrShown).style.backgroundColor = "rgba(255, 255, 255, 0.90)";
}
$(window).scroll(function () {
    var scroll = $(window).scrollTop();
    $('header').css({ 'opacity': ((1000 - scroll) / 1000) });
});