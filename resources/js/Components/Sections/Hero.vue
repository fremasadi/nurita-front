<script setup>
import { inject } from 'vue';
import BaseButton from "@/Components/Base/BaseButton.vue";

const props = defineProps({ hero: Object });
const lang = inject('lang');

const t = (field) => props.hero?.[`${field}_${lang.value}`] ?? props.hero?.[`${field}_id`] ?? '';
</script>

<template>
    <section id="beranda" class="pt-16 min-h-screen flex items-center bg-white dark:bg-[#0f172a]">
        <div class="max-w-7xl mx-auto px-6 lg:px-8 py-24 w-full">
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-16 items-center">
                <!-- Text -->
                <div class="space-y-8">
                    <div class="space-y-4">
                        <h1 class="text-5xl lg:text-6xl font-bold text-[#001818] dark:text-slate-100 leading-tight">
                            {{ t('title') }}
                        </h1>
                        <p class="text-lg text-[#64748B] dark:text-slate-400 leading-relaxed max-w-lg">
                            {{ t('description') }}
                        </p>
                    </div>
                    <div class="flex flex-wrap gap-4">
                        <BaseButton variant="primary" size="lg" :href="hero?.button_url || '#kontak'">
                            {{ t('button_text') }}
                            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3"/>
                            </svg>
                        </BaseButton>
                    </div>
                </div>

                <!-- img hero -->
                <div class="hidden lg:flex justify-center lg:justify-end">
                    <div class="relative w-full max-w-md">
                        <img
                            src="/assets/images/img_hero.png"
                            alt="Ilustrasi Sistem Digital"
                            class="w-full h-auto object-contain"
                        />
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>
