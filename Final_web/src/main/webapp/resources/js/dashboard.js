/* globals Chart:false, feather:false */

(() => {
  'use strict'

  feather.replace({ 'aria-hidden': 'true' })
  // const Plugin = {};

  // Graphs
  const ctx = document.getElementById('myChart');
  // eslint-disable-next-line no-unused-vars
  const myChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: [
        '일',
        '월',
        '화',
        '수',
        '목',
        '금',
        '토'
      ],
      datasets: [{
        data: [
          42,
          45,
          45,
          43,
          48,
          53,
          52
        ],
        lineTension: 0,
        backgroundColor: 'transparent',
        borderColor: '#007bff',
        borderWidth: 4,
        pointBackgroundColor: '#007bff'
      }]
    },
    options: {
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero: false,
            stepSize: 5
          }
        }]
      },
      legend: {
        display: false
      }
    }
  })

  const ctx1 = document.getElementById('myChart2');
  // eslint-disable-next-line no-unused-vars
  const myChart2 = new Chart(ctx1, {
    type: 'pie',
    data: {
      labels: [
        '한방1과',
        '한방2과',
        '양방과'
      ],
      datasets: [{
        label : '# of Votes',
        data: [
          20,
          10,
          8
        ],
        backgroundColor:[
          'rgb(249,110,99)','rgb(136,212,156)','rgb(121,187,227)'
        ],
        lineTension: 0,
        borderColor: 'black',
        borderWidth: 1,
      }]
    },
    options: {
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero: false,
          }
        }]
      },
      legend: {
        display: true
      }
    }
  })
})()
