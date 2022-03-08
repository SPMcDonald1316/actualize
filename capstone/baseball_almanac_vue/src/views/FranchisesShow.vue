<template>
  <div class="franchises-show">
    <div id="header">
      <!-- Inner -->
      <div class="inner">
        <header>
          <h1><a href="/" id="logo">Baseball Almanac</a></h1>
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
                <h2><a href="#">{{ franchise.franch_name }}</a></h2>
                <p>Overall Stats</p>
              <h3>Wins: {{overallWins}} || Losses: {{overallLoss}} || Win Pct: {{(overallWins / (overallWins + overallLoss)).toFixed(3)}}</h3>
              <h3>Wild Card Apperances: {{wildcardApps}} || Division Titles: {{divTitles}}</h3>
              <h3>League Pennants: {{leaguePens}} || World Series Titles: {{worldSeriesTitles}}</h3>
              </header>
              <section>
                <table class="default">
                  <thead>
                    <th>Year</th>
                    <th>Team</th>
                    <th>Wins</th>
                    <th>Losses</th>
                    <th>Win Pct</th>
                    <th>Wild Card</th>
                    <th>Division</th>
                    <th>League</th>
                    <th>World Series</th>
                  </thead>
                  <tr v-bind:key="stat.id" v-for="stat in franchise.stats">
                    <td><a v-bind:href="`/franchises/${franchise.franch_id}/${stat.year_id}`">{{stat.year_id}}</a></td>
                    <td>{{stat.name}}</td>
                    <td>{{stat.w}}</td>
                    <td>{{stat.l}}</td>
                    <td>{{(stat.w / (stat.w + stat.l)).toFixed(3)}}</td>
                    <td>{{stat.wc_win}}</td>
                    <td>{{stat.div_win}}</td>
                    <td>{{stat.lg_win}}</td>
                    <td>{{stat.ws_win}}</td>
                  </tr>
                </table>
              </section>
            </article>
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
      message: "Franchise Stats",
      franchise: {},
      overallWins: 0,
      overallLoss: 0,
      wildcardApps: 0,
      divTitles: 0,
      leaguePens: 0,
      worldSeriesTitles: 0
    };
  },
  created: function() {
    axios.get(`/api/franchises/${this.$route.params.franch_id}`).then(response => {
      console.log(response.data);
      this.franchise = response.data;
      this.franchise.stats.forEach(year => {
        this.overallWins += parseInt(year.w);
        this.overallLoss += parseInt(year.l);
        if (year.wc_win === "Y") {
          this.wildcardApps += 1;
        }
        if (year.div_win === "Y") {
          this.divTitles += 1;
        }
        if (year.lg_win === "Y") {
          this.leaguePens += 1;
        }
        if (year.ws_win === "Y") {
          this.worldSeriesTitles += 1;
        }
      });
    });
  },
  methods: {}
};
</script>
