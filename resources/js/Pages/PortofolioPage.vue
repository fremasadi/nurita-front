<script setup>
import { provide, ref, watch } from 'vue';
import Navbar from '@/Components/Sections/Navbar.vue';
import Footer from '@/Components/Sections/Footer.vue';
import WhatsAppFAB from '@/Components/Sections/WhatsAppFAB.vue';
import BaseButton from '@/Components/Base/BaseButton.vue';

const props = defineProps({
    portfolios: Array,
    contact: Object,
});

const isDark = ref(false);
const lang = ref('id');

watch(isDark, (val) => {
    document.documentElement.classList.toggle('dark', val);
});

provide('isDark', isDark);
provide('lang', lang);

const t = (item, field) => item[`${field}_${lang.value}`] ?? item[`${field}_id`] ?? '';

const heading = {
    id: 'Portofolio Kami',
    en: 'Our Portfolio',
};

const subheading = {
    id: 'Lihat lebih banyak solusi digital yang sudah kami kembangkan untuk berbagai kebutuhan bisnis.',
    en: 'Explore more digital solutions we have developed for various business needs.',
};

const backLabel = {
    id: 'Kembali ke Beranda',
    en: 'Back to Home',
};

const emptyText = {
    id: 'Belum ada portofolio yang tersedia.',
    en: 'No portfolio items are available yet.',
};

const placeholderColors = [
    'from-[#013A3B]/20 to-[#013A3B]/10',
    'from-slate-200 to-slate-100',
    'from-[#013A3B]/15 to-slate-100',
    'from-slate-200 to-[#013A3B]/10',
];
</script>

<template>
    <div class="font-sans antialiased text-[#001818] dark:text-slate-100 dark:bg-[#0f172a] transition-colors duration-300 min-h-screen">
        <Navbar />

        <main class="pt-16">
            <section class="py-24 bg-[#F8FAFC] dark:bg-[#0f172a]">
                <div class="max-w-7xl mx-auto px-6 lg:px-8">
                    <div class="max-w-3xl space-y-5 mb-14">
                        <BaseButton variant="ghost" size="sm" href="/#portofolio">
                            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 16l-4-4m0 0l4-4m-4 4h18" />
                            </svg>
                            {{ backLabel[lang] }}
                        </BaseButton>

                        <div class="space-y-4">
                            <h1 class="text-4xl md:text-5xl font-bold text-[#001818] dark:text-slate-100">
                                {{ heading[lang] }}
                            </h1>
                            <p class="text-[#64748B] dark:text-slate-400 text-lg leading-relaxed">
                                {{ subheading[lang] }}
                            </p>
                        </div>
                    </div>

                    <div v-if="props.portfolios?.length" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                        <article
                            v-for="(project, index) in props.portfolios"
                            :key="project.id"
                            class="bg-white dark:bg-[#1e293b] rounded-2xl overflow-hidden border border-slate-100 dark:border-slate-700 shadow-sm hover:shadow-md hover:-translate-y-1 transition-all duration-300 group"
                        >
                            <div class="h-52 bg-gradient-to-br flex items-center justify-center relative overflow-hidden" :class="placeholderColors[index % placeholderColors.length]">
                                <img v-if="project.image" :src="`/storage/${project.image}`" :alt="t(project, 'title')" class="w-full h-full object-cover" />
                                <svg v-else class="w-16 h-16 text-[#013A3B]/30 dark:text-teal-400/30" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/>
                                </svg>
                                <div class="absolute inset-0 bg-[#013A3B] opacity-0 group-hover:opacity-5 transition-opacity duration-300"></div>
                            </div>

                            <div class="p-6 space-y-3">
                                <span class="text-xs font-medium text-[#013A3B] dark:text-teal-400 bg-[#013A3B]/10 dark:bg-teal-900/40 px-3 py-1 rounded-full">
                                    {{ t(project, 'category') }}
                                </span>
                                <h2 class="text-lg font-semibold text-[#001818] dark:text-slate-100">
                                    {{ t(project, 'title') }}
                                </h2>
                                <p class="text-[#64748B] dark:text-slate-400 text-sm leading-relaxed">
                                    {{ t(project, 'description') }}
                                </p>
                                <div class="flex flex-wrap gap-2 pt-1">
                                    <span
                                        v-for="tag in (project.tags || [])"
                                        :key="tag"
                                        class="text-xs text-[#64748B] dark:text-slate-400 border border-slate-200 dark:border-slate-700 px-2 py-0.5 rounded"
                                    >
                                        {{ tag }}
                                    </span>
                                </div>
                                <BaseButton v-if="project.demo_url" variant="outline" size="sm" :href="project.demo_url" class="mt-2">
                                    Demo
                                </BaseButton>
                            </div>
                        </article>
                    </div>

                    <div v-else class="bg-white dark:bg-[#1e293b] rounded-2xl border border-slate-100 dark:border-slate-700 p-10 text-center text-[#64748B] dark:text-slate-400">
                        {{ emptyText[lang] }}
                    </div>
                </div>
            </section>
        </main>

        <Footer :contact="props.contact" />
        <WhatsAppFAB :contact="props.contact" />
    </div>
</template>
