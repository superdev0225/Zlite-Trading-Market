/*=========================================================================================
    File Name: dashboard-analytics.js
    Description: intialize advance cards
    ----------------------------------------------------------------------------------------
    Item Name: Stack - Responsive Admin Theme
    Version: 2.1
    Author: Pixinvent
    Author URL: hhttp://www.themeforest.net/user/pixinvent
==========================================================================================*/
(function(window, document, $) {
    'use strict';

    $('#audience-list-scroll, #goal-list-scroll').perfectScrollbar({
        wheelPropagation: true
    });

    $("#sp-bar-total-cost").sparkline([5,6,7,8,9,10,13,15,13,12,10,9,10,12,15,18,16,14,12,10,8,5], {
        type: 'bar',
        width: '100%',
        height: '30px',
        barWidth: 4,
        barSpacing: 6,
        barColor: '#FFA87D'
    });

    $("#sp-stacked-bar-total-sales").sparkline([5,6,7,8,9,10,13,15,13,12,10,9,10,12,15,18,16,14,12,10,8,5], {
        type: 'bar',
        width: '100%',
        height: '30px',
        barWidth: 4,
        barSpacing: 6,
        barColor: '#FF7588'
    });

    $("#sp-tristate-bar-total-revenue").sparkline([5,6,7,8,9,10,13,15,13,12,10,9,10,12,15,18,16,14,12,10,8,5], {
        type: 'bar',
        width: '100%',
        height: '30px',
        barWidth: 4,
        barSpacing: 6,
        barColor: '#16D39A'
    });
    
    /***********************************************************
    *               New User - Page Visist Stats               *
    ***********************************************************/
    //Get the context of the Chart canvas element we want to select
    var ctx2 = document.getElementById("line-stacked-area").getContext("2d");

    // Chart Options
    var userPageVisitOptions = {
        responsive: true,
        maintainAspectRatio: false,
        pointDotStrokeWidth : 4,
        legend: {
            display: false,
            labels: {
                fontColor: '#404e67',
                boxWidth: 10,
            },
            position: 'bottom',
        },
        hover: {
            mode: 'label'
        },
        scales: {
            xAxes: [{
                display: true,
                gridLines: {
                    color: "rgba(255,255,255, 0.3)",
                    drawTicks: true,
                    drawBorder: false,
                    zeroLineColor:'#FFF'
                },
                ticks: {
                    display: true,
                },
            }],
            yAxes: [{
                display: true,
                gridLines: {
                    color: "rgba(0,0,0, 0.07)",
                    drawTicks: false,
                    drawBorder: false,
                    drawOnChartArea: true
                },
                ticks: {
                    display: true,
                    maxTicksLimit: 5
                },
            }]
        },
        title: {
            display: false,
            text: 'Chart.js Line Chart - Legend'
        },
    };

    // Chart Data
    var userPageVisitData = {
        labels: ["2010", "2011", "2012", "2013", "2014", "2015", "2016","2017"],
        datasets: [{
            label: "Unique Visitor",
            data: [0, 5, 22, 14, 28, 12, 24, 0],
            backgroundColor: "rgba(255,117,136, 0.7)",
            borderColor: "transparent",
            pointBorderColor: "transparent",
            pointBackgroundColor: "transparent",
            pointRadius: 2,
            pointBorderWidth: 2,
            pointHoverBorderWidth: 2,
        },{
            label: "Total Visits",
            data: [0, 8, 30, 15, 12, 21, 14, 0],
            backgroundColor: "rgba(255,168,125,0.9)",
            borderColor: "transparent",
            pointBorderColor: "transparent",
            pointBackgroundColor: "transparent",
            pointRadius: 2,
            pointBorderWidth: 2,
            pointHoverBorderWidth: 2,
        }, {
            label: "Page Views",
            data: [0, 20, 10, 45, 20, 36, 21, 0],
            backgroundColor: "rgba(22,211,154,0.7)",
            borderColor: "transparent",
            pointBorderColor: "transparent",
            pointBackgroundColor: "transparent",
            pointRadius: 2,
            pointBorderWidth: 2,
            pointHoverBorderWidth: 2,
        }]
    };


    /********************************************
    *               Vector Maps                 *
    ********************************************/
    // Sessions data
    // -----------------------------------
    $('#world-map-markers').vectorMap({
      map: 'world_mill',
      backgroundColor: '#fff',
      zoomOnScroll: false,
      series: {
        regions: [{
          values: visitorData,
          scale: ['#E0F6F6', '#00B5B8'],
          normalizeFunction: 'polynomial'
        }]
      },
      onRegionTipShow: function(e, el, code){
        el.html(el.html()+' (Visitor - '+visitorData[code]+')');
      }
    });




})(window, document, jQuery);