<template>
  <q-header bordered class="bg-marginal-bg">
    <q-toolbar>
      <q-toolbar-title>
        <span><strong>ZeroWei</strong></span>
      </q-toolbar-title>

      <q-btn
        dense
        flat
        round
        @click="toggleDarkMode"
        :icon="$q.dark.isActive ? 'brightness_3' : 'wb_sunny'"
        size="sm"
      >
        <q-tooltip>Toggle Dark Mode</q-tooltip>
      </q-btn>
    </q-toolbar>
  </q-header>

  <q-drawer v-model="leftDrawerOpen" bordered>
    <q-list>
      <q-item-label header>Links </q-item-label>

      <EssentialLink
        v-for="link in essentialLinks"
        :key="link.title"
        v-bind="link"
      />
    </q-list>
  </q-drawer>
</template>
<script>
import { defineComponent, ref } from "vue";
import EssentialLink from "components/EssentialLink.vue";

const linksList = [
  {
    title: "Cashu.space",
    caption: "cashu.space",
    icon: "web",
    link: "https://cashu.space",
  },
  {
    title: "Documentation",
    caption: "docs.cashu.space",
    icon: "school",
    link: "https://docs.cashu.space",
  },
  {
    title: "Github",
    caption: "github.com/cashubtc",
    icon: "code",
    link: "https://github.com/cashubtc/cashu.me",
  },
  {
    title: "Telegram",
    caption: "t.me/CashuMe",
    icon: "chat",
    link: "https://t.me/CashuMe",
  },
  {
    title: "Faucet",
    caption: "gandlaf.com/faucet",
    icon: "generating_tokens",
    link: "https://www.gandlaf.com/faucet/anarchy",
  },
  {
    title: "Redeem",
    caption: "redeem.cashu.me",
    icon: "money",
    link: "https://redeem.cashu.me/",
  },
  {
    title: "Twitter",
    caption: "@CashuBTC",
    icon: "rss_feed",
    link: "https://twitter.com/CashuBTC",
  },
  {
    title: "Donate",
    caption: "Support Cashu development",
    icon: "favorite",
    link: "https://docs.cashu.space/contribute",
  },
];

export default defineComponent({
  name: "MainHeader",
  mixins: [windowMixin],
  props: {},
  components: {
    EssentialLink,
  },
  setup() {
    const leftDrawerOpen = ref(false);

    return {
      themes: [
        "classic",
        "bitcoin",
        "mint",
        "autumn",
        "monochrome",
        "salvador",
        "freedom",
        "cyber",
        "flamingo",
      ],
      essentialLinks: linksList,
      leftDrawerOpen,
      toggleLeftDrawer() {
        leftDrawerOpen.value = !leftDrawerOpen.value;
      },
    };
  },
});
</script>
