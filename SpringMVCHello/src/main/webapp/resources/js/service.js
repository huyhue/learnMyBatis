var brakepointWeb = 1200,
    brakepointLaptop = 992,
    brakepointTablet = 768,
    brakepointMobile = 576;

var deviceStaus;
function resetFunction(){
    if(window.matchMedia("(min-width: "+ brakepointTablet +"px)").matches){
        if(deviceStaus !== "laptop"){
            webReset();
            deviceStaus = "laptop";
        }
    }else{
        if(deviceStaus !== "mobile"){
            mobileReset();
            deviceStaus = "mobile";
        }
    }
}

//테블릿
var deviceStausDesktop;
function setWeb(){
    var mediaTablet = window.matchMedia("(max-width: " + brakepointWeb + "px) and (min-width: " + brakepointTablet + "px)").matches;
    if (mediaTablet) {
        if (deviceStausDesktop !== "web") {
            deviceStausDesktop = "web";
            $('body').addClass('side-toggled transition');
        }
    } else {
        if (deviceStausDesktop !== "etc") {
            deviceStausDesktop = "etc";
            $('body').removeClass('side-toggled transition');
        }
    }
}

function addListenerMulti(element, eventNames, listener) {
    var events = eventNames.split(' ');
    for (var i=0, iLen=events.length; i<iLen; i++) {
        element.addEventListener(events[i], listener, false);
    }
}
addListenerMulti(window, 'DOMContentLoaded resize orientationchange', function(){
    resetFunction();
    setWeb();
});

//load, resize, change 감지 시 실행
var webReset = function () {
    //side togle - web
    $('.side').show();
    $('.header .side__toggler').removeClass('active').attr('aria-expanded', false);

    $('.gnb__button').click( function() {
        $('.side').show();
    });
}
var mobileReset = function () {
    //side togle - mobile
    $('.side').hide();

    $('.gnb__button').click( function() {
        $('.side').hide();
        $('.header .side__toggler').removeClass('active').attr('aria-expanded', false);
    });
}

var setLocalStorage = function(key, value){
    localStorage.setItem(key, value);
}

var eventResize = function(){
    setTimeout(function() {
        window.dispatchEvent(new Event('resize'));
    }, 100);
}
var setToggled = function(name){
    eventResize();
    var toggleClassName = name + "-toggled",
        hasClass = $('body').hasClass(toggleClassName),
        mediaNotWeb = window.matchMedia("(max-width: " + brakepointWeb + "px)").matches;

    if(hasClass){
       $('body').removeClass(toggleClassName);
       var isAnyOne = $('body').attr('class').indexOf("toggled");
       if(isAnyOne !== "-1"){
           $('body').removeClass("transition");
       }
       $('html').removeClass('fixed');
    } else{
       $('body').addClass(toggleClassName).addClass("transition");
        if(mediaNotWeb){
            $('html').addClass('fixed');
        }
    }
    $('body, html').animate({scrollTop: 0}, 300);

    setLocalStorage(name + "Toggled", $('body').hasClass(toggleClassName));
}

//localStorage Boolean Toggle
var setStorageToggled = function(key){
    var getStorageData = (localStorage.getItem(key) === 'true');
    var value = !getStorageData;
    localStorage.setItem(key, value);
}

//scroll up, down
$(function(){
    var doc = document.documentElement;
    var w = window;
    var prevScroll = w.scrollY || doc.scrollTop;
    var curScroll;
    var direction = 0;
    var prevDirection = 0;
    var posBottom = false;
    var headerHeight = 62;

    var checkScroll = function() {
        curScroll = w.scrollY || doc.scrollTop;

        if ((curScroll > prevScroll) && curScroll > headerHeight) { //scrolled up - header 제외
            direction = 2;
        }
        else if ( (curScroll < prevScroll)  && curScroll > headerHeight) { //scrolled down  - header 제외
            direction = 1;
        }else{
            direction = 0;   // header 영역
        }

        if (direction !== prevDirection) {
            toggleHeader(direction);
        }
        prevScroll = curScroll;
    };

    var toggleHeader = function(direction) {
        if (direction === 2) {
            $("body").addClass("scroll-up").removeClass("scroll-down");
            prevDirection = direction;
        }
        else if (direction === 1) {
            $("body").removeClass("scroll-up").addClass("scroll-down");
            prevDirection = direction;
        } else{
            $("body").removeClass("scroll-up scroll-down");
            prevDirection = 0;
        }
    };
    window.addEventListener('scroll', checkScroll);
});


//웹용 사이드 메뉴 확장, 축소
$(function(){
    /*
    $(".side").hover(function(){
        $('.side .side-toggle').addClass("show");
    }, function() {
        $('.side .side-toggle').removeClass("show");
    });
    */
    $(".filter__pin").on("click",function(){
        $(this).toggleClass("active")
    });
});

//gnb - 알림 허용 disabled
$(function(){
    $("#noticeAll").change(function(){
        var chk = $(this).is(":checked");
        if(chk) {
            $(".gnb .notice__list .p-form-checkbox__input").prop('disabled', false);
        } else{
            $(".gnb .notice__list .p-form-checkbox__input").prop('disabled', true);
        }
    });
});


//비밀번호 보기
$(document).on("click", "[data-button='pass']",function(e){
    e.preventDefault();
    var button = $(this);
    var target = $(button.data("target"));
    button.toggleClass("show");
    if (target.attr("type") === "password") {
        target.attr('type','text');
    } else {
        target.attr('type','password');
    }
});


//기관 dataList
var dataList = document.getElementById('clientDatalist');
var dataListInput = document.getElementById('clientSearch');
if(dataList && dataListInput){
    // 기관 목록 불러오기
    var request = new XMLHttpRequest();
    request.onreadystatechange = function (response) {
        if (request.readyState === 4) {
            if (request.status === 200) {
                var jsonOptions = JSON.parse(request.responseText);
                jsonOptions.forEach(function (item) {
                    var option = document.createElement('option');
                    option.value = item;
                    dataList.appendChild(option);
                    dataListInput.classList.add('datalist-loaded')
                });
                //placeholder text.
                dataListInput.placeholder = "기관명";
            } else {
                // input.placeholder = "목록을 불러하지 못했습니다.";
            }
        }
    };

    // Update the placeholder text.
    dataListInput.placeholder = "기관명 로드중...";

    request.open('GET', '/layout/client-list.json', true);
    request.send();
}
