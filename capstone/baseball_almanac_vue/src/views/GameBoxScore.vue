<template>
  <div class="franchises-show">
    <div id="header">
      <!-- Inner -->
      <div class="inner">
        <header>
          <h1>Baseball Almanac</h1>
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
          <div class="col-8 col-12-mobile imp-mobile" id="content">
            <article id="main">
              <header>
                <h2>{{awayTeam}} @ {{homeTeam}}</h2>
                <p v-if="homeScore > awayScore">{{homeTeam}}: {{homeScore}}   {{awayTeam}}: {{awayScore}}  Final</p>
                <p v-else-if="awayScore === homeScore" >{{homeTeam}}: {{homeScore + parseInt(this.game[this.game.length - 1].rbi)}}   {{awayTeam}}: {{awayScore}}  Final</p>
                <p v-else> {{awayTeam}}: {{awayScore}}   {{homeTeam}}: {{homeScore}} Final</p>
                <p>{{ this.game[0].home_team[1]}}</p>
                <p>{{this.game[0].game_date}}</p>
              </header>
              <!-- <table class=default>
                <thead>
                  <th>Inning</th>
                  <th v-bind:key="inning.id" v-for="inning in innings">{{ inning }}</th>
                </thead>
                <tr>
                  <th>{{awayTeam}}</th>
                  <td v-bind:key="awayScore.id" v-for="awayScore in awayInnScore">{{ awayScore }}</td>
                </tr>
                <tr>
                  <th>{{homeTeam}}</th>
                  <td v-bind:key="homeScore.id" v-for="homeScore in homeInnScore">{{ homeScore }}</td>
                </tr>
              </table> -->
              <section>
                <table class="default">
                  <thead>
                    <th>Inning</th>
                    <th>Team Batting</th>
                    <th>Batter</th>
                    <th>Pitcher</th>
                    <th>Outs</th>
                    <th>Balls</th>
                    <th>Strikes</th>
                    <th>Event</th>
                  </thead>
                  <tbody>
                    <tr v-bind:key="event.id" v-for="event in game">
                      <td>{{ event.inning }}</td>
                      <td>{{ event.batting }}</td>
                      <td>{{ event.batter }}</td>
                      <td>{{ event.pitcher }}</td>
                      <td>{{ event.outs }}</td>
                      <td>{{ event.balls }}</td>
                      <td>{{ event.strikes }}</td>
                      <td>{{ event.event }}</td>
                    </tr>
                  </tbody>
                </table>
              </section>
            </article>
          </div>
          <div class="col-4 col-12-mobile" id="sidebar">
            <hr class="first" />
            <section>
              <header>
                <h3>{{awayTeam}} Lineup</h3>
              </header>
              <ol>
                <li v-bind:key="player.id" v-for="player in awayLineup">{{player}}</li>
              </ol>
            <hr />
              <header>
                <h3>{{homeTeam}} Lineup</h3>
              </header>
              <ol>
                <li v-bind:key="player.id" v-for="player in homeLineup">{{player}}</li>
              </ol>
            </section>
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
export default {
  data: function() {
    return {
      game: [],
      homeLineup: [],
      awayLineup: [],
      innings: [],
      awayInnScore: [],
      homeInnScore: [],
      homeTeam: "",
      homeScore: 0,
      awayTeam: "",
      awayScore: 0
    };
  },
  created: function() {
    axios.get(`/api/games/${this.$route.params.game_id}`).then(response => {
      this.game = response.data;
      console.log(this.game);
      this.homeTeam = this.game[0].home_team[0];
      this.homeScore = parseInt(this.game[this.game.length - 1].home_score);
      this.awayTeam = this.game[0].away_team;
      this.awayScore = parseInt(this.game[this.game.length - 1].away_score);
      this.createHomeLineup();
      this.createAwayLineup();
      // this.createBoxScore();
    });
  },
  methods: {
    createHomeLineup: function() {
      for (let i = 0; i < this.game.length; i++) {
        if (this.game[i].batting === this.game[i].home_team[0]) {
          if (this.homeLineup.length === 0) {
            this.homeLineup.push(this.game[i].batter);
          } else if (this.homeLineup.includes(this.game[i].batter)) {
            continue;
          } else if (this.homeLineup.length < 9) {
            this.homeLineup.push(this.game[i].batter);
          } else {
            break;
          }
        }
      }
      return this.homeLineup;
    },
    createAwayLineup: function() {
      for (let i = 0; i < this.game.length; i++) {
        if (this.game[i].batting === this.game[i].away_team) {
          if (this.awayLineup.length === 0) {
            this.awayLineup.push(this.game[i].batter);
          } else if (this.awayLineup.includes(this.game[i].batter)) {
            i++;
          } else if (this.awayLineup.length < 9) {
            this.awayLineup.push(this.game[i].batter);
          } else {
            break;
          }
        }
      }
      return this.awayLineup;
    },
    // createBoxScore: function() {
    //   this.innings.push(this.game[0].inning);
    //   for (let i = 0; i < this.game.length; i++) {
    //     if (this.innings.includes(this.game[i].inning)) {
    //       i++;
    //     } else {
    //       this.innings.push(this.game[i].inning);
    //     }
    //   }
    //   let awaySc = 0;
    //   let homeSc = 0;
    //   for (let i = 0; i < this.game.length; i++) {
    //     if (this.game[i].batting === this.game[i].away_team) {
    //       if (i === 0) {
    //         awaySc += parseInt(this.game[i].rbi);
    //       } else if (this.game[i].inning === this.game[i - 1].inning) {
    //         awaySc += parseInt(this.game[i].rbi);
    //       } else if (this.game[i + 1] === undefined) {
    //         awaySc += parseInt(this.game[i].rbi);
    //         this.homeInnScore.push(awaySc);
    //       } else {
    //         this.awayInnScore.push(awaySc);
    //         awaySc = parseInt(this.game[i].rbi);
    //       }
    //     } else {
    //       if (this.game[i].inning === this.game[i - 1].inning) {
    //         homeSc += parseInt(this.game[i].rbi);
    //       } else if (this.game[i + 1] === undefined) {
    //         homeSc += parseInt(this.game[i].rbi);
    //         this.homeInnScore.push(homeSc);
    //       } else {
    //         this.homeInnScore.push(homeSc);
    //         homeSc = parseInt(this.game[i].rbi);
    //       }
    //     }
    //   }
    //   console.log(this.homeInnScore);
    //   console.log(this.awayInnScore);
    // }
  }
};
</script>
