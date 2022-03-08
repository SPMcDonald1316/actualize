<template>
  <div class="players-show">
    <div id="header">
      <!-- Inner -->
      <div class="inner">
        <header>
          <h1 id="logo">Baseball Almanac</h1>
        </header>
      </div>
      <!-- Nav -->
      <nav id="nav">
        <ul>
          <li><a href="/">Home</a></li>
          <li><a href="/franchises">Franchises</a></li>
          <li><a href="/players/A">Players</a></li>
          <li><a href="/about">About Me</a></li>
        </ul>
      </nav>
		</div>
    <div class="wrapper style1">

      <div class="container">
        <div class="row gtr-200">
          <div class="col-4 col-12-mobile" id="sidebar">
            <hr class="first" />
            <section>
              <header>
                <h3><a href="#">Player Info</a></h3>
              </header>
              <p>Height: {{ player.height }}</p>
              <p>Weight: {{ player.weight }}</p>
              <p>Debut: {{ player.debut }}</p>
              <p>Final Game: {{ player.final_game }}</p>
              <p v-if="player.halloffame">Year Inducted Into Hall Of Fame: {{player.halloffame.year_id}}</p>
            </section>
            <section>
              <header>
                <h3>Display Stats</h3>
              </header>
              <div>
                <button v-on:click="displayBatting()">Batting Stats</button> 
              </div>
              <div>
                <button v-on:click="displayPitching()">Pitching Stats</button> 
              </div>
              <div>
                <button v-on:click="displayFielding()">Fielding Stats</button> 
              </div>
              </section>
            <hr />
            <section>
              <header>
                <h3><a href="#">More Info</a></h3>
              </header>
              <p>
                Awards, Allstar Apperances, Salary Info
              </p>
              <div class="row gtr-50">
                <div class="col-8" v-if="player.awards && player.awards.length > 0">
                  <h4>Awards</h4>
                  <table class="default">
                    <thead>
                      <th>Year</th>
                      <th>League</th>
                      <th>Award</th>
                    </thead>
                    <tr v-bind:key="award.id" v-for="award in player.awards">
                      <td>{{award.year_id}}</td>
                      <td>{{award.lg_id}}</td>
                      <td>{{award.award_id}}</td>
                    </tr>
                  </table>
                </div>
                <div class="col-8" v-if="player.awards && player.awards.length > 0">
                  <h4>Allstar Appearances</h4>
                  <table class="default">
                    <thead>
                      <th>Year</th>
                      <th>League</th>
                      <th>Team</th>
                    </thead>
                    <tr v-bind:key="appearance.id" v-for="appearance in player.allstar">
                      <td>{{appearance.year_id}}</td>
                      <td>{{appearance.lg_id}}</td>
                      <td>{{appearance.team_id}}</td>
                    </tr>
                  </table>
                </div>
                <div class="col-8" v-if="player.salaries && player.salaries.length > 0">
                  <h4>Salary</h4>
                  <table class="default">
                    <thead>
                      <th>Year</th>
                      <th>Team</th>
                      <th>Salary</th>
                    </thead>
                    <tr v-bind:key="salary.id" v-for="salary in player.salaries">
                      <td>{{salary.year_id}}</td>
                      <td>{{salary.team_id}}</td>
                      <td>{{salary.salary}}</td>
                    </tr>
                  </table>
                </div>
                
              </div>
            </section>
          </div>
          <div class="col-8 col-12-mobile imp-mobile" id="content">
            <article id="main">
              <header>
                <h2>{{ player.name }}</h2>
              </header>
              <section v-if="player.hitting_stats && player.hitting_stats.length > 0 && batClicked === true">
                <header>
                  <h3>Regular Season Batting</h3>
                </header>
                <table class="default">
                  <thead>
                    <th>Year</th>
                    <th>Team</th>
                    <th>G</th>
                    <th>AB</th>
                    <th>R</th>
                    <th>H</th>
                    <th>2B</th>
                    <th>3B</th>
                    <th>HR</th>
                    <th>RBI</th>
                    <th>SB</th>
                    <th>CS</th>
                    <th>BB</th>
                    <th>SO</th>
                    <th>IBB</th>
                    <th>HBP</th>
                    <th>SH</th>
                    <th>SF</th>
                    <th>GIDP</th>
                  </thead>
                  <tr v-bind:key="stat.id" v-for="stat in player.hitting_stats">
                    <td>{{stat.year_id}}</td>
                    <td>{{stat.team_id}}</td>
                    <td>{{stat.g}}</td>
                    <td>{{stat.ab}}</td>
                    <td>{{stat.r}}</td>
                    <td>{{stat.h}}</td>
                    <td>{{stat.doubles}}</td>
                    <td>{{stat.triples}}</td>
                    <td>{{stat.hr}}</td>
                    <td>{{stat.rbi}}</td>
                    <td>{{stat.sb}}</td>
                    <td>{{stat.cs}}</td>
                    <td>{{stat.bb}}</td>
                    <td>{{stat.so}}</td>
                    <td>{{stat.ibb}}</td>
                    <td>{{stat.hbp}}</td>
                    <td>{{stat.sh}}</td>
                    <td>{{stat.sf}}</td>
                    <td>{{stat.gidp}}</td>
                  </tr>
                </table>
              </section>
              <section v-if="player.post_hitting && player.post_hitting.length > 0 && batClicked === true">
                <header>
                  <h3>Post Season Batting</h3>
                </header>
                <table class="default">
                  <thead>
                    <th>Year</th>
                    <th>Team</th>
                    <th>G</th>
                    <th>AB</th>
                    <th>R</th>
                    <th>H</th>
                    <th>2B</th>
                    <th>3B</th>
                    <th>HR</th>
                    <th>RBI</th>
                    <th>SB</th>
                    <th>CS</th>
                    <th>BB</th>
                    <th>SO</th>
                    <th>IBB</th>
                    <th>HBP</th>
                    <th>SH</th>
                    <th>SF</th>
                    <th>GIDP</th>
                  </thead>
                  <tr v-bind:key="stat.id" v-for="stat in player.post_hitting">
                    <td>{{stat.year_id}}</td>
                    <td>{{stat.team_id}}</td>
                    <td>{{stat.g}}</td>
                    <td>{{stat.ab}}</td>
                    <td>{{stat.r}}</td>
                    <td>{{stat.h}}</td>
                    <td>{{stat.doubles}}</td>
                    <td>{{stat.triples}}</td>
                    <td>{{stat.hr}}</td>
                    <td>{{stat.rbi}}</td>
                    <td>{{stat.sb}}</td>
                    <td>{{stat.cs}}</td>
                    <td>{{stat.bb}}</td>
                    <td>{{stat.so}}</td>
                    <td>{{stat.ibb}}</td>
                    <td>{{stat.hbp}}</td>
                    <td>{{stat.sh}}</td>
                    <td>{{stat.sf}}</td>
                    <td>{{stat.gidp}}</td>
                  </tr>
                </table>
              </section>
              <section v-if="player.pitching_stats && player.pitching_stats.length > 0 && pitClicked === true">
                <header>
                  <h3>Regular Season Pitching</h3>
                </header>
                <table class="default">
                  <thead>
                    <th>Year</th>
                    <th>Team</th>
                    <th>W</th>
                    <th>L</th>
                    <th>G</th>
                    <th>GS</th>
                    <th>GF</th>
                    <th>CG</th>
                    <th>SHO</th>
                    <th>SV</th>
                    <th>H</th>
                    <th>R</th>
                    <th>ER</th>
                    <th>HR</th>
                    <th>BB</th>
                    <th>SO</th>
                    <th>BA OPP</th>
                    <th>ERA</th>
                    <th>IBB</th>
                    <th>WP</th>
                    <th>HBP</th>
                    <th>Bks</th>
                  </thead>
                  <tr v-bind:key="stat.id" v-for="stat in player.pitching_stats">
                    <td>{{stat.year_id}}</td>
                    <td>{{stat.team_id}}</td>
                    <td>{{stat.w}}</td>
                    <td>{{stat.l}}</td>
                    <td>{{stat.g}}</td>
                    <td>{{stat.gs}}</td>
                    <td>{{stat.gf}}</td>
                    <td>{{stat.cg}}</td>
                    <td>{{stat.sho}}</td>
                    <td>{{stat.sv}}</td>
                    <td>{{stat.h}}</td>
                    <td>{{stat.r}}</td>
                    <td>{{stat.er}}</td>
                    <td>{{stat.hr}}</td>
                    <td>{{stat.bb}}</td>
                    <td>{{stat.so}}</td>
                    <td>{{stat.ba_opp}}</td>
                    <td>{{stat.era}}</td>
                    <td>{{stat.ibb}}</td>
                    <td>{{stat.wp}}</td>
                    <td>{{stat.hbp}}</td>
                    <td>{{stat.bk}}</td>
                  </tr>
                </table>
              </section>
              <section v-if="player.post_pitching && player.post_pitching.length > 0 && pitClicked === true">
                <header>
                  <h3>Post Season Pitching</h3>
                </header>
                <table class="default">
                  <thead>
                    <th>Year</th>
                    <th>Team</th>
                    <th>W</th>
                    <th>L</th>
                    <th>G</th>
                    <th>GS</th>
                    <th>GF</th>
                    <th>CG</th>
                    <th>SHO</th>
                    <th>SV</th>
                    <th>H</th>
                    <th>R</th>
                    <th>ER</th>
                    <th>HR</th>
                    <th>BB</th>
                    <th>SO</th>
                    <th>BA OPP</th>
                    <th>ERA</th>
                    <th>IBB</th>
                    <th>WP</th>
                    <th>HBP</th>
                    <th>Balks</th>
                  </thead>
                  <tr v-bind:key="stat.id" v-for="stat in player.post_pitching">
                    <td>{{stat.year_id}}</td>
                    <td>{{stat.team_id}}</td>
                    <td>{{stat.w}}</td>
                    <td>{{stat.l}}</td>
                    <td>{{stat.g}}</td>
                    <td>{{stat.gs}}</td>
                    <td>{{stat.gf}}</td>
                    <td>{{stat.cg}}</td>
                    <td>{{stat.sho}}</td>
                    <td>{{stat.sv}}</td>
                    <td>{{stat.h}}</td>
                    <td>{{stat.r}}</td>
                    <td>{{stat.er}}</td>
                    <td>{{stat.hr}}</td>
                    <td>{{stat.bb}}</td>
                    <td>{{stat.so}}</td>
                    <td>{{stat.ba_opp}}</td>
                    <td>{{stat.era}}</td>
                    <td>{{stat.ibb}}</td>
                    <td>{{stat.wp}}</td>
                    <td>{{stat.hbp}}</td>
                    <td>{{stat.bk}}</td>
                  </tr>
                </table>
              </section>
              <section v-if="player.fielding_stats && player.fielding_stats.length > 0 && fieldClicked === true">
                <header>
                  <h3>Regular Season Fielding</h3>
                </header>
                <table class="default">
                  <thead>
                    <th>Year</th>
                    <th>Team</th>
                    <th>POS</th>
                    <th>G</th>
                    <th>GS</th>
                    <th>PO</th>
                    <th>A</th>
                    <th>E</th>
                    <th>DP</th>
                    <th>PB</th>
                    <th>WP</th>
                    <th>SB</th>
                    <th>CS</th>
                  </thead>
                  <tr v-bind:key="stat.id" v-for="stat in player.fielding_stats">
                    <td>{{stat.year_id}}</td>
                    <td>{{stat.team_id}}</td>
                    <td>{{stat.pos}}</td>
                    <td>{{stat.g}}</td>
                    <td>{{stat.gs}}</td>
                    <td>{{stat.po}}</td>
                    <td>{{stat.a}}</td>
                    <td>{{stat.e}}</td>
                    <td>{{stat.dp}}</td>
                    <td>{{stat.pb}}</td>
                    <td>{{stat.wp}}</td>
                    <td>{{stat.sb}}</td>
                    <td>{{stat.cs}}</td>
                  </tr>
                </table>
              </section>
              <section v-if="player.post_fielding && player.post_fielding.length > 0 && fieldClicked === true">
                <header>
                  <h3>Post Season Fielding</h3>
                </header>
                <table class="default">
                  <thead>
                    <th>Year</th>
                    <th>Team</th>
                    <th>POS</th>
                    <th>G</th>
                    <th>GS</th>
                    <th>PO</th>
                    <th>A</th>
                    <th>E</th>
                    <th>DP</th>
                    <th>PB</th>
                    <th>WP</th>
                    <th>SB</th>
                    <th>CS</th>
                  </thead>
                  <tr v-bind:key="stat.id" v-for="stat in player.post_fielding">
                    <td>{{stat.year_id}}</td>
                    <td>{{stat.team_id}}</td>
                    <td>{{stat.pos}}</td>
                    <td>{{stat.g}}</td>
                    <td>{{stat.gs}}</td>
                    <td>{{stat.po}}</td>
                    <td>{{stat.a}}</td>
                    <td>{{stat.e}}</td>
                    <td>{{stat.dp}}</td>
                    <td>{{stat.pb}}</td>
                    <td>{{stat.wp}}</td>
                    <td>{{stat.sb}}</td>
                    <td>{{stat.cs}}</td>
                  </tr>
                </table>
              </section>
            </article>
            <div>
              <div id="hitter1" style="width:100%; height:400px;"></div>
              <div id="hitter2" style="width:100%; height:400px;"></div>
              <div id="hitter3" style="width:100%; height:400px;"></div>
            </div>
            <div>
              <div id="pitcher1" style="width:100%; height:400px;"></div>
              <div id="pitcher2" style="width:100%; height:400px;"></div>
              <div id="pitcher3" style="width:100%; height:400px;"></div>
            </div>
          </div>
        </div>

      </div>

    </div>
    
  </div>
</template>

<style>
</style>

<script>
import axios from "axios";
import Highcharts from "highcharts";
export default {
  data: function() {
    return {
      message: "Player Stats",
      player: {},
      playerYears: [],
      playerSingles: [],
      playerDoubles: [],
      playerTriples: [],
      playerHR: [],
      playerBA: [],
      playerOBP: [],
      playerSLG: [],
      hitterKRate: [],
      hitterBBRate: [],
      pitcherKRate: [],
      pitcherBBRate: [],
      playerSO9: [],
      playerBB9: [],
      playerH9: [],
      playerHR9: [],
      playerERA: [],
      playerRA9: [],
      playerWHIP: [],
      pitClicked: false,
      batClicked: false,
      fieldClicked: false
    };
  },
  created: function() {
    axios.get(`/api/player/${this.$route.params.id}`).then(response => {
      // console.log(response.data);
      this.player = response.data;
      if (this.player.fielding_stats[this.player.fielding_stats.length - 1].pos === 'P') {
        this.pitStats();
        this.makePitcherChart();
        this.pitClicked = true;
      } else {
        this.hitStats();
        this.makeHitterChart();
        this.batClicked = true;
      }
    });
  },
  methods: {
    hitStats: function() {
      this.player.hitting_stats.forEach(year => {
        this.playerYears.push(year.year_id);
        let singles = (parseInt(year.h) - parseInt(year.doubles) - parseInt(year.triples) - parseInt(year.hr));
        this.playerSingles.push(singles);
        this.playerDoubles.push(parseInt(year.doubles));
        this.playerTriples.push(parseInt(year.triples));
        this.playerHR.push(parseInt(year.hr));
        let ba = parseFloat((parseInt(year.h) / parseInt(year.ab)).toPrecision(3));
        this.playerBA.push(ba);
        this.playerOBP.push(parseFloat(((parseInt(year.h) + parseInt(year.bb) + parseInt(year.hbp)) / (parseInt(year.ab) + parseInt(year.bb) + parseInt(year.hbp) + parseInt(year.sf))).toPrecision(3)));
        this.playerSLG.push(parseFloat(
          ((singles + parseInt(year.doubles) * 2 + parseInt(year.triples) * 3 + parseInt(year.hr) * 4) / parseInt(year.ab)).toPrecision(3)
        ));
        let pa = (parseInt(year.ab) + parseInt(year.bb) + parseInt(year.hbp) + parseInt(year.sh) + parseInt(year.sf));
        console.log(pa);
        this.hitterKRate.push(parseFloat(((parseInt(year.so) / pa) * 100).toFixed(3)));
        this.hitterBBRate.push(parseFloat(((parseInt(year.bb) / pa) * 100).toFixed(3)));
      });
    },
    pitStats: function() {
      this.player.pitching_stats.forEach(year => {
        this.playerYears.push(year.year_id);
        let ip = parseFloat((parseInt(year.ip_outs) / 3).toFixed(2));
        this.playerH9.push(parseFloat((parseInt(year.h) * 9 / ip).toFixed(1)));
        this.playerHR9.push(parseFloat((parseInt(year.hr) * 9 / ip).toFixed(1)));
        this.playerBB9.push(parseFloat((parseInt(year.bb) * 9 / ip).toFixed(1)));
        this.playerSO9.push(parseFloat((parseInt(year.so) * 9 / ip).toFixed(1)));
        this.playerERA.push(parseFloat(year.era));
        this.playerWHIP.push(parseFloat(((parseInt(year.bb) + parseInt(year.h)) / ip).toFixed(3)));
        this.playerRA9.push(parseFloat(((parseInt(year.r) * 9) / ip).toFixed(2)));
        this.pitcherKRate.push(parseFloat(((parseInt(year.so) / parseInt(year.bfp)) * 100).toFixed(1)));
        this.pitcherBBRate.push(parseFloat(((parseInt(year.bb) / parseInt(year.bfp)) * 100).toFixed(1)));
      });
    },
    makeHitterChart: function() {
      var hitbreakdownChart = Highcharts.chart('hitter1', {
        chart: {
          type: 'column'
        },
        title: {
          text: 'Season Hit Breakdown'
        },
        xAxis: {
          categories: this.playerYears
        },
        yAxis: {
          min: 0,
          title: {
            text: 'Hit Totals'
          },
          stackLabels: {
            enabled: true,
            style: {
              fontWeight: 'bold',
              color: ( // theme
                Highcharts.defaultOptions.title.style &&
                Highcharts.defaultOptions.title.style.color
              ) || 'gray'
            }
          }
        },
        legend: {
          align: 'right',
          x: -30,
          verticalAlign: 'top',
          y: 25,
          floating: true,
          backgroundColor:
                Highcharts.defaultOptions.legend.backgroundColor || 'white',
          borderColor: '#CCC',
          borderWidth: 1,
          shadow: false
        },
        tooltip: {
          headerFormat: '<b>{point.x}</b><br/>',
          pointFormat: '{series.name}: {point.y}<br/>Total: {point.stackTotal}'
        },
        plotOptions: {
          column: {
            stacking: 'normal',
            dataLabels: {
              enabled: true
            }
          }
        },
        series: [{
          name: 'Singles',
          data: this.playerSingles
        }, {
          name: 'Doubles',
          data: this.playerDoubles
        }, {
          name: 'Triples',
          data: this.playerTriples
        }, {
          name: 'Home Runs',
          data: this.playerHR
        }]
      });

      var hitSlashLineChart = Highcharts.chart('hitter2', {
        chart: {
          type: 'spline'
        },
        title: {
          text: 'Yearly Slash Line'
        },
        xAxis: {
          categories: this.playerYears
        },
        series: [{
          name: 'BA',
          data: this.playerBA
        }, {
          name: 'OBP',
          data: this.playerOBP
        }, {
          name: 'SLG',
          data: this.playerSLG
        }]
      });

      var hitRateStatChart = Highcharts.chart('hitter3', {
        chart: {
          type: 'spline'
        },
        title: {
          text: 'Rate Stats'
        },
        xAxis: {
          categories: this.playerYears
        },
        series: [{
          name: 'K Rate',
          data: this.hitterKRate
        }, {
          name: 'BB Rate',
          data: this.hitterBBRate
        }]
      });
    },
    makePitcherChart: function() {
      var perNineStats = Highcharts.chart('pitcher1', {
        chart: {
          type: 'column'
        },
        title: {
          text: 'Pitcher Per 9 Stats'
        },
        xAxis: {
          categories: this.playerYears,
          crosshair: true
        },
        yAxis: {
          min: 0,
          title: {
            text: 'Per 9 Innings'
          }
        },
        tooltip: {
          headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
          pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.1f}</b></td></tr>',
          footerFormat: '</table>',
          shared: true,
          useHTML: true
        },
        plotOptions: {
          column: {
            pointPadding: 0.2,
            borderWidth: 0
          }
        },
        series: [{
          name: 'H9',
          data: this.playerH9
        }, {
          name: 'HR9',
          data: this.playerHR9
        }, {
          name: 'BB9',
          data: this.playerBB9
        }, {
          name: 'SO9',
          data: this.playerSO9
        }]
      });

      var pitChart = Highcharts.chart('pitcher2', {
        chart: {
          type: 'spline'
        },
        title: {
          text: 'Pitcher Effectiveness'
        },
        xAxis: {
          categories: this.playerYears
        },
        series: [{
          name: 'ERA',
          data: this.playerERA
        }, {
          name: 'RA9',
          data: this.playerRA9
        }, {
          name: 'WHIP',
          data: this.playerWHIP
        }]
      });

      var pitRateStatChart = Highcharts.chart('pitcher3', {
        chart: {
          type: 'spline'
        },
        title: {
          text: 'Rate Stats'
        },
        xAxis: {
          categories: this.playerYears
        },
        series: [{
          name: 'K Rate',
          data: this.pitcherKRate
        }, {
          name: 'BB Rate',
          data: this.pitcherBBRate
        }]
      });
    },
    displayBatting: function() {
      this.batClicked = !this.batClicked;
      this.pitClicked = false;
      this.fieldClicked = false;
      this.hitStats();
      this.makeHitterChart();
    },
    displayPitching: function() {
      this.pitClicked = !this.pitClicked;
      this.batClicked = false;
      this.fieldClicked = false;
      this.pitStats();
      this.makePitcherChart();
    },
    displayFielding: function() {
      this.fieldClicked = !this.fieldClicked;
      this.batClicked = false;
      this.pitClicked = false;
    }
  },
};
</script>