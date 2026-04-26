<script setup>
import { ref, provide, watch } from 'vue';
import Navbar from '@/Components/Sections/Navbar.vue';
import Hero from '@/Components/Sections/Hero.vue';
import Layanan from '@/Components/Sections/Layanan.vue';
import Keunggulan from '@/Components/Sections/Keunggulan.vue';
import Portofolio from '@/Components/Sections/Portofolio.vue';
import CaraKerja from '@/Components/Sections/CaraKerja.vue';
import Kontak from '@/Components/Sections/Kontak.vue';
import Footer from '@/Components/Sections/Footer.vue';
import WhatsAppFAB from '@/Components/Sections/WhatsAppFAB.vue';

const props = defineProps({
    hero: Object,
    services: Array,
    features: Array,
    portfolios: Array,
    workSteps: Array,
    contact: Object,
});

const isDark = ref(false);
const lang = ref('id');

watch(isDark, (val) => {
    document.documentElement.classList.toggle('dark', val);
});

provide('isDark', isDark);
provide('lang', lang);
</script>

<template>
    <div class="font-sans antialiased text-[#001818] dark:text-slate-100 dark:bg-[#0f172a] transition-colors duration-300">
        <Navbar />
        <main>
            <Hero :hero="props.hero" />
            <Layanan :services="props.services" />
            <Keunggulan :features="props.features" />
            <Portofolio :portfolios="props.portfolios" />
            <CaraKerja :work-steps="props.workSteps" />
            <Kontak :contact="props.contact" />
        </main>
        <Footer :contact="props.contact" />
        <WhatsAppFAB :contact="props.contact" />
    </div>
</template>
