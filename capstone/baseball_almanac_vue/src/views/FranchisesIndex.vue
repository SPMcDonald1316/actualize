<template>
  <div class="franchises-index">
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
          <div class="col-4 col-12-mobile" id="sidebar">
            <hr class="first" />
            <section>
              <header>
                <h3><a href="#">Notice</a></h3>
              </header>
              <p>
                These are franchises and not team names so it might seem like certain teams are missing but their stats are just included within the franchise they're considered part of. For example the Montreal Expos became the Washington Nationals so the Expos year stats and game schedules are included in the Nationals Franchise.
              </p>
            </section>
            <hr />
            <section>
              <header>
                <h3>League and Associations</h3>
              </header>
              <p>
                The different leagues that have existed throughout the history of the Major Leagues
              </p>
              <div class="row gtr-50">
                <div class="col-4">
                  <a href="#" class="image fit"><img src="/images/pic10.jpg" alt="" /></a>
                </div>
                <div class="col-8">
                  <h4>National Association of Professional Base Ball Players</h4>
                  <p>The National Association of Professional Base Ball Players (NAPBBP), or known simply as the National Association (NA), was founded in 1871 and continued through the 1875 season. It succeeded and incorporated several professional clubs from the previous National Association of Base Ball Players (NABBP) of 1857–1870, sometimes called "the amateur association"; in turn several of its clubs created the succeeding National League of Professional Baseball Clubs.</p>
                  <p>1871-1875</p>
                </div>
                <div class="col-4">
                  <a href="#" class="image fit"><img src="/images/NLlogo.png" alt="" /></a>
                </div>
                <div class="col-8">
                  <h4>National League of Professional Baseball Clubs</h4>
                  <p>The National League of Professional Baseball Clubs, known simply as the National League (NL), is the older of two leagues constituting Major League Baseball (MLB) in the United States and Canada, and the world's oldest current professional team sports league. Founded on February 2, 1876, to replace the National Association of Professional Base Ball Players (NAPBBP) of 1871–1875 (often called simply the "National Association"), the NL is sometimes called the Senior Circuit, in contrast to MLB's other league, the American League, which was founded 25 years later and is called the "Junior Circuit".</p>
                  <p>1876-Present</p>
                </div>
                <div class="col-4">
                  <a href="#" class="image fit"><img src="/images/pic12.jpg" alt="" /></a>
                </div>
                <div class="col-8">
                  <h4>American Association</h4>
                  <p>1882-1891</p>
                  <p>The American Association (AA) was a professional baseball league that existed for 10 seasons from 1882 to 1891. Together with the National League (NL), founded in 1876, the AA participated in an early version of the World Series[a] seven times versus the champion of the NL in an interleague championship playoff tournament. At the end of its run, several AA franchises joined the NL. After 1891, the NL existed alone, with each season's champions being awarded the prized Temple Cup (1894-1897).</p>
                </div>
                <div class="col-4">
                  <a href="#" class="image fit"><img src="/images/pic13.jpg" alt="" /></a>
                </div>
                <div class="col-8">
                  <h4>Union Association</h4>
                  <p>1884</p>
                  <p>The Union Association was a league in Major League Baseball which lasted for only one season in 1884. St. Louis won the pennant and joined the National League the following season. Chicago moved to Pittsburgh in late August, and four teams folded during the season and were replaced. Seven of the twelve teams who were in the league at some point during the season did not play a full schedule.</p>
                </div>
                <div class="col-4">
                  <a href="#" class="image fit"><img src="/images/pic14.jpg" alt="" /></a>
                </div>
                <div class="col-8">
                  <h4>Players' National League of Professional Base Ball Clubs</h4>
                  <p>1890</p>
                  <p>The Players' National League of Professional Base Ball Clubs, popularly known as the Players' League (sometimes rendered as Players League), was a short-lived but star-studded professional American baseball league of the 19th century. It emerged from the Brotherhood of Professional Base-Ball Players, the sport's first players' union.</p>
                </div>
                <div class="col-4">
                  <a href="#" class="image fit"><img src="/images/ALlogo.png" alt="" /></a>
                </div>
                <div class="col-8">
                  <h4>American League of Professional Baseball Clubs</h4>
                  <p>1901-Present</p>
                  <p>The American League of Professional Baseball Clubs, or simply the American League (AL), is one of two leagues that make up Major League Baseball (MLB) in the United States and Canada. It developed from the Western League, a minor league based in the Great Lakes states, which eventually aspired to major league status. It is sometimes called the Junior Circuit because it claimed Major League status for the 1901 season, 25 years after the formation of the National League (the "Senior Circuit").</p>
                </div>
                <div class="col-4">
                  <a href="#" class="image fit"><img src="/images/Federal_League_logo.png" alt="" /></a>
                </div>
                <div class="col-8">
                  <h4>Federal League of Base Ball Clubs</h4>
                  <p>1914-1915</p>
                  <p>The Federal League of Base Ball Clubs, known simply as the Federal League, was an American professional baseball league that played its first season in 1913 and operated as a "third major league", in competition with the established National and American Leagues, from 1914 to 1915.</p>
                </div>
              </div>
            </section>
          </div>
          <div class="col-8 col-12-mobile imp-mobile" id="content">
            <article id="main">
              <header>
                <h2>Franchises</h2>
                <p>
                  List of Major League Franchises
                </p>
              </header>
              <p>Search For Team on page: <input type="text" v-model="teamFilter"></p>
              <section v-bind:key="item.id" v-for="item in filterBy(pageOfItems, teamFilter, 'franch_name')">
                <header>
                  <h3><a v-bind:href="`/franchises/${item.franch_id}`">{{ item.franch_name }}</a></h3>
                </header>
                <p>{{ item.franch_id }}</p>
              </section>
              <div>
                <jw-pagination v-bind:items="franchises" v-bind:pageSize="40" @changePage="onChangePage"></jw-pagination>
              </div>
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
import Vue2Filters from 'vue2-filters';
import JwPagination from 'jw-vue-pagination';
export default {
  mixins: [Vue2Filters.mixin],
  data: function() {
    return {
      message: "Franchises",
      franchises: [],
      pageOfItems: [],
      teamFilter: ""
    };
  },
  created: function() {
    axios.get('/api/franchises').then(response => {
      console.log(response.data);
      this.franchises = response.data;
    });
  },
  methods: {
    onChangePage(pageOfItems) {
    // update page of items
      this.pageOfItems = pageOfItems;
    }
  }
};
</script>
