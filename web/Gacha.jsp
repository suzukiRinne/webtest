
<html>
<head>
    <title>Title</title>
</head>
<body>
SSR率:<input type="text" id="ssr" >%
&nbsp&nbsp&nbsp
<br>
<%--
<button onclick="gacha_once()">抽卡</button>
--%>
<button onclick="gacha_ten()">十连</button>

<p></p>
<img src=""><img src="" ><img src=""><img src="" ><img src=""><img src="" ><img src=""><img src="" ><img src=""><img src="" >

<script>
    function input_get() {
/*
        var sum_card = document.getElementById("card").value
*/
        var ssr_rate = document.getElementById("ssr").value
        var sr_rate = 0
        var sum_rate = Number(ssr_rate) + Number(sr_rate)
        return [ssr_rate,sr_rate,sum_rate]
    }
    function input_confirm() {
        var info = input_get()
        var ssr_rate = info[0]
        var sr_rate = info[1]
        var sum_rate = info[2]

        if (ssr_rate<0 || sr_rate<0 || sum_rate>100) {
            alert("请正确输入概率")
        }
    }
    function get_rare() {
        var info = input_get()
        var ssr_rate = info[0]
        var sum_rate = info[2]

        var cardrare = 0
        var roll = random(1,100)
        if (roll <= ssr_rate) {
            cardrare = "SSR"
        }
        else if (roll > ssr_rate && roll <= sum_rate) {
            cardrare = "SR"
        }
        else if (roll > sum_rate){
            cardrare = "R"
        }
        return cardrare
    }


    /*function gacha_text() {
        var getrare = get_rare()
        var getnum = get_number()
        var text = getrare +"第"+ getnum +"张"
        return text
    }*/

    function ssr_num(){
        var num = random(1,14)
        return num
    }

    function img_get(i) {
        var getrare = get_rare()
        var getnum = 0
        var card_path = 0
        var card_path_get = 0
        if(getrare == "SSR"){
            getnum = ssr_num()
            card_path = "img/SSR"+getnum+".jpg"
        }
        if(getrare == "SSR"){
            document.getElementsByTagName("img")[i].setAttribute("src",card_path);
        }
        if(getrare != "SSR"){
            document.getElementsByTagName("img")[i].setAttribute("src","");
            document.getElementsByTagName("img")[i].setAttribute("alt","对不起，非SSR没有图")
        }
    }

    function gacha_once() {
        input_confirm()
        var gacha_get = document.querySelector('p')
        gacha_get.innerText = "结果"
        var i = 0
        img_get(i)

     /*   var text = getrare +"第"+ getnum +"张"
        var gacha_get = document.querySelector('p')
        gacha_get.innerText =  "结果:" +"\n"+ text*/
    }

    function gacha_ten() {
        input_confirm()
        var gacha_get = document.querySelector('p')
        gacha_get.innerText = "结果"
        var i = 0
        for(i=0;i<10;i++){
            img_get(i)
        }
    }

    //lower下限  upper上限
    function random(lower, upper) {
        return Math.floor(Math.random() * (upper - lower + 1)) + lower;
    }
</script>

</body>
</html>
