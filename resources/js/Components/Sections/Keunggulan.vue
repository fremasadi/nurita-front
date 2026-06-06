<script setup>
import { inject } from 'vue';
import BaseCard from '@/Components/Base/BaseCard.vue';

const props = defineProps({ features: Array });
const lang = inject('lang');

const t = (item, field) => item[`${field}_${lang.value}`] ?? item[`${field}_id`] ?? '';

const fallbackIcons = [
    '<svg fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4"/></svg>',
    '<svg fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M9 17V7m0 10a2 2 0 01-2 2H5a2 2 0 01-2-2V7a2 2 0 012-2h2a2 2 0 012 2m0 10a2 2 0 002 2h2a2 2 0 002-2M9 7a2 2 0 012-2h2a2 2 0 012 2m0 10V7m0 10a2 2 0 002 2h2a2 2 0 002-2V7a2 2 0 00-2-2h-2a2 2 0 00-2 2"/></svg>',
    '<svg fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M18.364 5.636l-3.536 3.536m0 5.656l3.536 3.536M9.172 9.172L5.636 5.636m3.536 9.192l-3.536 3.536M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-5 0a4 4 0 11-8 0 4 4 0 018 0z"/></svg>',
];

const iconHtml = (feature, index) => feature.icon || fallbackIcons[index % fallbackIcons.length];

const heading = { id: 'Keunggulan Kami dalam Mengembangkan Solusi Digital', en: 'Our Advantages in Developing Digital Solutions' };
const subheading = {
    id: 'Kami berkomitmen memberikan solusi teknologi terbaik dengan pendekatan profesional, terstruktur, dan berorientasi pada kebutuhan bisnis Anda.',
    en: 'We are committed to providing the best technology solutions with a professional, structured, and business-needs-oriented approach.',
};
</script>

<template>
    <section id="keunggulan" class="py-24 bg-white dark:bg-[#0f172a]">
        <div class="max-w-7xl mx-auto px-6 lg:px-8 space-y-16">
            <!-- Top: Text -->
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
                <div class="space-y-4">
                    <h2 class="text-4xl font-bold text-[#001818] dark:text-slate-100 leading-tight">
                        {{ heading[lang] }}
                    </h2>
                    <p class="text-[#64748B] dark:text-slate-400 text-lg leading-relaxed">
                        {{ subheading[lang] }}
                    </p>
                </div>
            </div>

            <!-- Bottom: 3 Cards -->
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                <BaseCard
                    v-for="(feature, index) in (features || []).slice(0, 3)"
                    :key="feature.id"
                    padding="p-8"
                    class="space-y-4 text-center"
                >
                    <div class="w-14 h-14 bg-[#013A3B]/10 dark:bg-teal-900/40 rounded-xl flex items-center justify-center text-[#013A3B] dark:text-teal-400 mx-auto">
                        <span
                            class="inline-flex [&>svg]:w-7 [&>svg]:h-7 [&>svg]:stroke-current [&>svg]:text-current"
                            v-html="iconHtml(feature, index)"
                        ></span>
                    </div>
                    <h3 class="font-semibold text-[#001818] dark:text-slate-100">{{ t(feature, 'title') }}</h3>
                    <p class="text-[#64748B] dark:text-slate-400 text-sm leading-relaxed">{{ t(feature, 'description') }}</p>
                </BaseCard>
            </div>
        </div>
    </section>
</template>
