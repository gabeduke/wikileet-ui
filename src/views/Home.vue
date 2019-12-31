<template>
  <div class="page-wrapper">
    <h1 class="home-page-title">{{ appTitle }}</h1>
    <b-container class="bv-example-row">
      <b-row align-v="start">
        <b-col sm="6">
          <b-img
            fluid
            rounded
            thumbnail
            :src="require('../assets/img/DukeFamily.jpg')"
          ></b-img>
        </b-col>
        <b-col sm="6">
          <p>
            To get started:<br />
            1. log into the site from the top right hand side.<br />
            2. Head over to the 'MyList' tab to start creating items<br />
            3. Profit.<br />
          </p>
        </b-col>
      </b-row>
    </b-container>

    <!-- <a
      rel="noopener"
      class="documentation-link"
      target="_blank"
      href="https://bento-starter.netlify.com/"
      >Framework Documentation →</a
    > -->
  </div>
</template>

<script>
import { mapState } from 'vuex'

export default {
  head() {
    return {
      title: {
        inner: 'Home'
      },
      meta: [
        {
          name: 'description',
          content: `${this.appTitle} home page`,
          id: 'desc'
        }
      ]
    }
  },
  computed: mapState('app', ['appTitle'])
}
</script>

<style lang="scss" scoped>
@import '@/theme/variables.scss';

.page-wrapper {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;

  .logo {
    margin-bottom: 3rem;
  }

  .home-page-title {
    text-align: center;
  }

  .documentation-link {
    display: inline-block;
    font-size: 1.2rem;
    color: #fff;
    background-color: #5d6788;
    padding: 0.8rem 1.6rem;
    border-radius: 4px;
    transition: background-color 0.1s ease;
    box-sizing: border-box;
    text-decoration: none;
    width: fit-content;
    font-weight: 500;
  }
}
</style>
