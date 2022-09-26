<template>
  <div class="login">
    <form v-on:submit.prevent="submit()">
      <h1>
        <ul>
          <li class="text-danger" v-for="error in errors">
            {{ errors }}
          </li>
        </ul>
      </h1>
    </form>
  </div>
</template>