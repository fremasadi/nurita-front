<script setup>
import { inject } from 'vue';
import BaseCard from '@/Components/Base/BaseCard.vue';

const props = defineProps({ features: Array });
const lang = inject('lang');

const t = (item, field) => item[`${field}_${lang.value}`] ?? item[`${field}_id`] ?? '';
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
                    v-for="feature in (features || []).slice(0, 3)"
                    :key="feature.id"
                    padding="p-8"
                    class="space-y-4 text-center"
                >
                    <div class="w-14 h-14 bg-[#013A3B]/10 dark:bg-teal-900/40 rounded-xl flex items-center justify-center text-[#013A3B] dark:text-teal-400 mx-auto">
                        <span v-html="feature.icon"></span>
                    </div>
                    <h3 class="font-semibold text-[#001818] dark:text-slate-100">{{ t(feature, 'title') }}</h3>
                    <p class="text-[#64748B] dark:text-slate-400 text-sm leading-relaxed">{{ t(feature, 'description') }}</p>
                </BaseCard>
            </div>
        </div>
    </section>
</template>
