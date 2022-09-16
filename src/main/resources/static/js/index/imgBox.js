window.onload = function(){
    let i=1;
    const hands = document.getElementById('hands');
    const eyes = document.getElementById('eyes');
    const flower = document.getElementById('flower');

    setInterval(function(){
        hands.setAttribute("src",("image/hands/hands_"+(i%10+1)+".png"));
        i++;
    },800);

    let j=1;
    setInterval(function(){
        eyes.setAttribute("src",("image/eyes/eyes_"+(j%10+1)+".png"));
        j++;
    },500);

    let k=1;
    setInterval(function(){
        flower.setAttribute("src",("image/flower/flower_"+(k%10+1)+".png"));
        k++;
    },1300);
}