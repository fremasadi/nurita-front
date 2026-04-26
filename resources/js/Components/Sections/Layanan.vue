<script setup>
import { inject } from 'vue';
import BaseCard from '@/Components/Base/BaseCard.vue';
import BaseButton from '@/Components/Base/BaseButton.vue';

const props = defineProps({ services: Array });
const lang = inject('lang');

const t = (item, field) => item[`${field}_${lang.value}`] ?? item[`${field}_id`] ?? '';
const sectionTitle = { id: 'Solusi Digital yang Kami Tawarkan', en: 'Digital Solutions We Offer' };
const sectionDesc = {
    id: 'Kami menyediakan berbagai layanan pengembangan software untuk membantu bisnis Anda tumbuh lebih efisien, modern, dan terintegrasi.',
    en: 'We provide various software development services to help your business grow more efficiently, modernly, and in an integrated manner.',
};
</script>

<template>
    <section id="layanan" class="py-24 bg-[#F1F5F9] dark:bg-[#1e293b]">
        <div class="max-w-7xl mx-auto px-6 lg:px-8">
            <!-- Header -->
            <div class="text-center max-w-2xl mx-auto mb-16 space-y-4">
                <h2 class="text-4xl font-bold text-[#001818] dark:text-slate-100">
                    {{ sectionTitle[lang] }}
                </h2>
                <p class="text-[#64748B] dark:text-slate-400 text-lg leading-relaxed">
                    {{ sectionDesc[lang] }}
                </p>
            </div>

            <!-- Grid -->
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                <BaseCard v-for="service in services" :key="service.id" class="group space-y-4">
                    <div class="w-14 h-14 bg-[#013A3B]/10 dark:bg-teal-900/40 rounded-xl flex items-center justify-center text-[#013A3B] dark:text-teal-400 group-hover:bg-[#013A3B] group-hover:text-white transition-all duration-300">
                        <span v-html="service.icon"></span>
                    </div>
                    <div class="space-y-2">
                        <h3 class="text-lg font-semibold text-[#001818] dark:text-slate-100">{{ t(service, 'title') }}</h3>
                        <p class="text-[#64748B] dark:text-slate-400 text-sm leading-relaxed">{{ t(service, 'description') }}</p>
                    </div>
                    <BaseButton variant="outline" size="sm" href="#kontak">
                        {{ lang === 'id' ? 'Lebih lanjut' : 'Learn more' }}
                    </BaseButton>
                </BaseCard>
            </div>
        </div>
    </section>
</template>
