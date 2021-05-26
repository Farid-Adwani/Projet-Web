function startGame() {
    document.querySelector('#letsplay').style.display='none';
    document.querySelector('#start').setAttribute('onclick','replay()');

    document.querySelector('#start').textContent="Replay";
    var reamining =document.querySelectorAll("#flip-card");

        reamining.forEach(function (value) {
            value.classList.toggle('do-flip');


    });
        setTimeout(function () {
            reamining.forEach(function (value) {
                value.classList.toggle('do-flip');


            });
        },2000);
}

function replay() {
    window.location.href = '/game';
}

document.addEventListener('click', function(event) {
       var reamining =document.querySelectorAll("#flip-card").length;

    var flipped =document.querySelectorAll("#flip-card.do-flip .flip-card-back img");
    if (flipped.length<2){

        var tar = event.target.parentElement.parentElement;
        if (tar && tar.id == "flip-card" && (event.target.parentElement.id=="front")) {

            document.querySelector('#start').setAttribute('data-toggle','');
            tar.classList.toggle('do-flip');

            var flipped =document.querySelectorAll("#flip-card.do-flip .flip-card-back img");

            if(flipped.length==2){
                if(flipped['0'].attributes.getNamedItem('alt').textContent == flipped['1'].attributes.getNamedItem('alt').textContent) {

                    setTimeout(function () {
                        flipped['0'].parentElement.parentElement.id= "done";
                        flipped['1'].parentElement.parentElement.id= "done";
                        flipped['0'].parentElement.parentElement.classList.toggle('do-flip');
                        flipped['1'].parentElement.parentElement.classList.toggle('do-flip');
                        flipped['0'].parentElement.previousElementSibling.firstElementChild.src = '/img/goodjob1.gif';
                        flipped['1'].parentElement.previousElementSibling.firstElementChild.src = '/img/goodjob1.gif';
                       if(reamining==2){
                          reponse=prompt("congrats do you want to discover "+flipped['1'].attributes.getNamedItem('alt').textContent);
                       if(reponse) window.location.href = '/club';}
                    },1000);


                }else{
                    setTimeout(function () {
                        flipped['0'].parentElement.parentElement.classList.toggle('do-flip');
                        flipped['1'].parentElement.parentElement.classList.toggle('do-flip');
                    },1000);


                }
            }


        }

    }


});