<script setup>
import { computed, inject, ref, watch } from 'vue';
import BaseButton from '@/Components/Base/BaseButton.vue';

const props = defineProps({
    project: {
        type: Object,
        required: true,
    },
});

const emit = defineEmits(['close']);
const lang = inject('lang');
const activeImageIndex = ref(0);

watch(() => props.project?.id, () => {
    activeImageIndex.value = 0;
});

const t = (item, field) => item?.[`${field}_${lang.value}`] ?? item?.[`${field}_id`] ?? '';

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

const images = computed(() => props.project?.image_urls ?? []);
const activeImage = computed(() => images.value[activeImageIndex.value] ?? props.project?.primary_image_url);
</script>

<template>
    <Teleport to="body">
        <div class="fixed inset-0 z-[100] bg-black/60 backdrop-blur-sm p-3 sm:px-4 sm:py-8 overflow-y-auto flex items-start sm:items-center justify-center" @click.self="emit('close')">
            <div class="w-full max-w-5xl max-h-[calc(100vh-1.5rem)] sm:max-h-[calc(100vh-4rem)] mx-auto bg-white dark:bg-[#0f172a] rounded-2xl overflow-hidden shadow-2xl border border-slate-100 dark:border-slate-700 flex flex-col">
                <div class="flex items-start justify-between gap-4 px-4 sm:px-6 py-4 border-b border-slate-100 dark:border-slate-700 flex-shrink-0">
                    <div>
                        <span class="text-xs font-medium text-[#013A3B] dark:text-teal-400 bg-[#013A3B]/10 dark:bg-teal-900/40 px-3 py-1 rounded-full">
                            {{ t(project, 'category') }}
                        </span>
                        <h3 class="text-lg sm:text-xl font-semibold text-[#001818] dark:text-slate-100 mt-3">
                            {{ t(project, 'title') }}
                        </h3>
                    </div>
                    <button
                        type="button"
                        class="w-10 h-10 rounded-lg border border-slate-200 dark:border-slate-700 text-slate-500 dark:text-slate-300 hover:text-[#013A3B] dark:hover:text-teal-400 transition-colors"
                        :aria-label="lang === 'id' ? 'Tutup detail portofolio' : 'Close portfolio detail'"
                        @click="emit('close')"
                    >
                        <svg class="w-5 h-5 mx-auto" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                        </svg>
                    </button>
                </div>

                <div class="overflow-y-auto">
                    <div class="grid grid-cols-1 lg:grid-cols-2 gap-0">
                    <div class="bg-[#F1F5F9] dark:bg-[#1e293b] p-4 sm:p-6">
                        <div class="aspect-video rounded-xl overflow-hidden bg-gradient-to-br from-[#013A3B]/20 to-[#013A3B]/10 flex items-center justify-center">
                            <img v-if="activeImage" :src="activeImage" :alt="t(project, 'title')" class="w-full h-full object-cover" />
                            <svg v-else class="w-20 h-20 text-[#013A3B]/30 dark:text-teal-400/30" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/>
                            </svg>
                        </div>

                        <div v-if="images.length > 1" class="grid grid-cols-3 sm:grid-cols-4 gap-2 sm:gap-3 mt-4">
                            <button
                                v-for="(image, index) in images"
                                :key="image"
                                type="button"
                                class="aspect-video rounded-lg overflow-hidden border-2 transition-all"
                                :class="activeImageIndex === index ? 'border-[#013A3B] dark:border-teal-400' : 'border-transparent opacity-70 hover:opacity-100'"
                                @click="activeImageIndex = index"
                            >
                                <img :src="image" :alt="`${t(project, 'title')} ${index + 1}`" class="w-full h-full object-cover" />
                            </button>
                        </div>
                    </div>

                    <div class="p-4 sm:p-6 lg:p-8 space-y-5">
                        <p class="text-[#64748B] dark:text-slate-400 leading-relaxed">
                            {{ t(project, 'description') }}
                        </p>

                        <div v-if="normalizeTags(project.tags).length" class="space-y-2">
                            <h4 class="text-sm font-semibold text-[#001818] dark:text-slate-100">
                                {{ lang === 'id' ? 'Stack Teknologi' : 'Technology Stack' }}
                            </h4>
                            <div class="flex flex-wrap gap-2">
                                <span
                                    v-for="tag in normalizeTags(project.tags)"
                                    :key="tag"
                                    class="text-xs text-[#64748B] dark:text-slate-400 border border-slate-200 dark:border-slate-700 px-2 py-1 rounded"
                                >
                                    {{ tag }}
                                </span>
                            </div>
                        </div>

                        <BaseButton v-if="project.demo_url" variant="outline" size="md" :href="project.demo_url" target="_blank">
                            Demo
                        </BaseButton>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </Teleport>
</template>
