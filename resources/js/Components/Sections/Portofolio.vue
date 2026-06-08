<script setup>
import { inject, ref } from 'vue';
import BaseButton from '@/Components/Base/BaseButton.vue';
import PortfolioDetailModal from '@/Components/Sections/PortfolioDetailModal.vue';

const props = defineProps({ portfolios: Array });
const lang = inject('lang');
const selectedPortfolio = ref(null);

const t = (item, field) => item[`${field}_${lang.value}`] ?? item[`${field}_id`] ?? '';

const normalizeTags = (tags) => {
    if (Array.isArray(tags)) {
        return tags;
    }

    if (!tags) {
        return [];
    }

    try {
        const parsedTags = JSON.parse(tags);

        if (Array.isArray(parsedTags)) {
            return parsedTags;
        }
    } catch {
        // Fallback for comma-separated tag strings.
    }

    return tags
        .toString()
        .split(',')
        .map((tag) => tag.trim())
        .filter(Boolean);
};

const heading = { id: 'Solusi yang Telah Kami Kembangkan', en: 'Solutions We Have Developed' };
const subheading = {
    id: 'Kami terus mengembangkan berbagai solusi digital yang dirancang untuk menjawab kebutuhan bisnis modern.',
    en: 'We continue to develop various digital solutions designed to meet modern business needs.',
};

const placeholderColors = [
    'from-[#013A3B]/20 to-[#013A3B]/10',
    'from-slate-200 to-slate-100',
    'from-[#013A3B]/15 to-slate-100',
    'from-slate-200 to-[#013A3B]/10',
];
</script>

<template>
    <section id="portofolio" class="py-24 bg-[#F1F5F9] dark:bg-[#1e293b]">
        <div class="max-w-7xl mx-auto px-6 lg:px-8">
            <!-- Header -->
            <div class="text-center max-w-2xl mx-auto mb-16 space-y-4">
                <h2 class="text-4xl font-bold text-[#001818] dark:text-slate-100">
                    {{ heading[lang] }}
                </h2>
                <p class="text-[#64748B] dark:text-slate-400 text-lg leading-relaxed">
                    {{ subheading[lang] }}
                </p>
            </div>

            <!-- Grid -->
            <div class="grid grid-cols-1 md:grid-cols-1 lg:grid-cols-3 gap-6">
                <div
                    v-for="(project, index) in portfolios"
                    :key="project.id"
                    class="bg-white dark:bg-[#0f172a] rounded-2xl overflow-hidden border border-slate-100 dark:border-slate-700 shadow-sm hover:shadow-md hover:-translate-y-1 transition-all duration-300 group"
                >
                    <!-- Image or Placeholder -->
                    <button
                        type="button"
                        class="h-48 bg-gradient-to-br flex items-center justify-center relative overflow-hidden w-full"
                        :class="placeholderColors[index % placeholderColors.length]"
                        @click="selectedPortfolio = project"
                    >
                        <img v-if="project.primary_image_url" :src="project.primary_image_url" :alt="t(project, 'title')" class="w-full h-full object-cover" />
                        <svg v-else class="w-16 h-16 text-[#013A3B]/30 dark:text-teal-400/30" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/>
                        </svg>
                        <div class="absolute inset-0 bg-[#013A3B] opacity-0 group-hover:opacity-5 transition-opacity duration-300"></div>
                    </button>

                    <!-- Content -->
                    <div class="p-6 space-y-3">
                        <span class="text-xs font-medium text-[#013A3B] dark:text-teal-400 bg-[#013A3B]/10 dark:bg-teal-900/40 px-3 py-1 rounded-full">
                            {{ t(project, 'category') }}
                        </span>
                        <h3 class="text-lg font-semibold text-[#001818] dark:text-slate-100">{{ t(project, 'title') }}</h3>
                        <p class="text-[#64748B] dark:text-slate-400 text-sm leading-relaxed">{{ t(project, 'description') }}</p>
                        <div class="flex flex-wrap gap-2 pt-1">
                            <span
                                v-for="tag in normalizeTags(project.tags)"
                                :key="tag"
                                class="text-xs text-[#64748B] dark:text-slate-400 border border-slate-200 dark:border-slate-700 px-2 py-0.5 rounded"
                            >
                                {{ tag }}
                            </span>
                        </div>
                        <BaseButton variant="outline" size="sm" as="button" class="mt-2" @click="selectedPortfolio = project">
                            {{ lang === 'id' ? 'Lihat Detail' : 'View Detail' }}
                        </BaseButton>
                    </div>
                </div>
            </div>

            <div class="text-center mt-12">
                <BaseButton variant="ghost" size="md" href="/portofolio">
                    {{ lang === 'id' ? 'Lihat lebih banyak' : 'See more' }}
                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3" />
                    </svg>
                </BaseButton>
            </div>
        </div>

        <PortfolioDetailModal
            v-if="selectedPortfolio"
            :project="selectedPortfolio"
            @close="selectedPortfolio = null"
        />
    </section>
</template>
