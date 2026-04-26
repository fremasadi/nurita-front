<script setup>
import { inject } from 'vue';

const props = defineProps({ workSteps: Array });
const lang = inject('lang');

const t = (item, field) => item[`${field}_${lang.value}`] ?? item[`${field}_id`] ?? '';
const heading = {
    id: 'Proses Kerja yang Terstruktur dan Transparan',
    en: 'A Structured and Transparent Work Process',
};
</script>

<template>
    <section id="cara-kerja" class="py-24 bg-white dark:bg-[#0f172a]">
        <div class="max-w-7xl mx-auto px-6 lg:px-8">
            <!-- Header -->
            <div class="text-center max-w-2xl mx-auto mb-20 space-y-4">
                <h2 class="text-4xl font-bold text-[#001818] dark:text-slate-100">
                    {{ heading[lang] }}
                </h2>
            </div>

            <!-- Steps -->
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8 relative">
                <!-- Connector line (desktop) -->
                <div class="hidden lg:block absolute top-10 left-[12.5%] right-[12.5%] h-0.5 bg-[#013A3B]/15 dark:bg-teal-800/50 z-0"></div>

                <div
                    v-for="(step, index) in workSteps"
                    :key="step.id"
                    class="relative z-10 flex flex-col items-center text-center space-y-4"
                >
                    <!-- Circle Number -->
                    <div class="w-20 h-20 rounded-full border-2 border-[#013A3B] dark:border-teal-500 flex items-center justify-center bg-white dark:bg-[#1e293b] shadow-sm">
                        <span class="text-2xl font-bold text-[#013A3B] dark:text-teal-400">{{ step.number }}</span>
                    </div>

                    <!-- Arrow between steps (desktop) -->
                    <div v-if="index < workSteps.length - 1" class="hidden lg:block absolute top-10 -right-6 text-[#013A3B]/40 dark:text-teal-600/60">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3" />
                        </svg>
                    </div>

                    <div class="space-y-2">
                        <h3 class="text-lg font-semibold text-[#001818] dark:text-slate-100">{{ t(step, 'title') }}</h3>
                        <p class="text-[#64748B] dark:text-slate-400 text-sm leading-relaxed max-w-xs mx-auto">{{ t(step, 'description') }}</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>
