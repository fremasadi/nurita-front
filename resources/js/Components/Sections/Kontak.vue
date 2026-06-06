<script setup>
import { reactive, ref, inject, computed } from 'vue';
import { router } from '@inertiajs/vue3';
import BaseButton from '@/Components/Base/BaseButton.vue';

const props = defineProps({ contact: Object });
const lang = inject('lang');

const form = reactive({ name: '', email: '', phone: '', company: '', message: '' });
const status = ref(null);
const errors = ref({});
const isSubmitting = ref(false);

const handleSubmit = () => {
    errors.value = {};
    status.value = null;
    isSubmitting.value = true;

    router.post('/contact-messages', form, {
        preserveScroll: true,
        onSuccess: () => {
            form.name = '';
            form.email = '';
            form.phone = '';
            form.company = '';
            form.message = '';
            status.value = 'success';
            setTimeout(() => { status.value = null; }, 4000);
        },
        onError: (validationErrors) => {
            errors.value = validationErrors;
            status.value = 'error';
        },
        onFinish: () => {
            isSubmitting.value = false;
        },
    });
};

const t = (field) => props.contact?.[`${field}_${lang.value}`] ?? props.contact?.[`${field}_id`] ?? '';

const contactInfoItems = computed(() => [
    {
        icon: `<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/></svg>`,
        text: props.contact?.email ?? '',
    },
    {
        icon: `<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"/></svg>`,
        text: props.contact?.phone ?? '',
    },
    {
        icon: `<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"/><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"/></svg>`,
        text: props.contact?.address ?? '',
    },
]);

const inputClass = 'w-full px-4 py-3 rounded-lg border border-slate-200 dark:border-slate-700 text-sm text-[#001818] dark:text-slate-100 placeholder:text-slate-400 dark:placeholder:text-slate-600 focus:outline-none focus:ring-2 focus:ring-[#013A3B]/30 dark:focus:ring-teal-500/30 focus:border-[#013A3B] dark:focus:border-teal-500 transition-all duration-200 bg-white dark:bg-[#1e293b]';
</script>

<template>
    <section id="kontak" class="py-24 bg-[#F1F5F9] dark:bg-[#1e293b]">
        <div class="max-w-7xl mx-auto px-6 lg:px-8">
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-16 items-start">
                <!-- Left Info -->
                <div class="space-y-8">
                    <div class="space-y-4">
                        <h2 class="text-4xl font-bold text-[#001818] dark:text-slate-100 leading-tight">
                            {{ t('section_title') }}
                            <span class="text-[#013A3B] dark:text-teal-400">{{ t('section_highlight') }}</span>
                        </h2>
                        <p class="text-[#64748B] dark:text-slate-400 text-lg leading-relaxed">
                            {{ t('section_description') }}
                        </p>
                    </div>

                    <ul class="space-y-4">
                        <li v-for="info in contactInfoItems" :key="info.text" class="flex items-center gap-3 text-[#64748B] dark:text-slate-400">
                            <div class="w-9 h-9 bg-[#013A3B]/10 dark:bg-teal-900/40 rounded-lg flex items-center justify-center text-[#013A3B] dark:text-teal-400 flex-shrink-0">
                                <span v-html="info.icon"></span>
                            </div>
                            <span class="text-sm">{{ info.text }}</span>
                        </li>
                    </ul>
                </div>

                <!-- Right Form -->
                <div class="bg-white dark:bg-[#0f172a] rounded-2xl p-8 shadow-sm border border-slate-100 dark:border-slate-700">
                    <form @submit.prevent="handleSubmit" class="space-y-5">
                        <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                            <div class="space-y-1.5">
                                <label class="text-sm font-medium text-[#001818] dark:text-slate-200">{{ lang === 'id' ? 'Nama Lengkap' : 'Full Name' }}</label>
                                <input v-model="form.name" type="text" :placeholder="lang === 'id' ? 'Masukkan nama lengkap' : 'Enter your full name'" :class="inputClass" required />
                                <p v-if="errors.name" class="text-xs text-red-500">{{ errors.name }}</p>
                            </div>
                            <div class="space-y-1.5">
                                <label class="text-sm font-medium text-[#001818] dark:text-slate-200">Email</label>
                                <input v-model="form.email" type="email" :placeholder="lang === 'id' ? 'Masukkan email' : 'Enter your email'" :class="inputClass" required />
                                <p v-if="errors.email" class="text-xs text-red-500">{{ errors.email }}</p>
                            </div>
                        </div>
                        <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                            <div class="space-y-1.5">
                                <label class="text-sm font-medium text-[#001818] dark:text-slate-200">{{ lang === 'id' ? 'No. HP' : 'Phone Number' }}</label>
                                <input v-model="form.phone" type="tel" :placeholder="lang === 'id' ? 'Masukkan nomor HP' : 'Enter your phone number'" :class="inputClass" required />
                                <p v-if="errors.phone" class="text-xs text-red-500">{{ errors.phone }}</p>
                            </div>
                            <div class="space-y-1.5">
                                <label class="text-sm font-medium text-[#001818] dark:text-slate-200">
                                    {{ lang === 'id' ? 'Nama Perusahaan' : 'Company Name' }}
                                    <span class="text-[#64748B] dark:text-slate-500 font-normal">{{ lang === 'id' ? '(Opsional)' : '(Optional)' }}</span>
                                </label>
                                <input v-model="form.company" type="text" :placeholder="lang === 'id' ? 'Masukkan nama perusahaan' : 'Enter company name'" :class="inputClass" />
                                <p v-if="errors.company" class="text-xs text-red-500">{{ errors.company }}</p>
                            </div>
                        </div>
                        <div class="space-y-1.5">
                            <label class="text-sm font-medium text-[#001818] dark:text-slate-200">{{ lang === 'id' ? 'Kebutuhan / Pesan' : 'Message / Requirements' }}</label>
                            <textarea v-model="form.message" rows="4" :placeholder="lang === 'id' ? 'Masukkan kebutuhan / pesan' : 'Enter your message or requirements'" :class="inputClass" required></textarea>
                            <p v-if="errors.message" class="text-xs text-red-500">{{ errors.message }}</p>
                        </div>

                        <!-- Status -->
                        <div v-if="status === 'success'" class="text-sm text-[#22C55E] bg-[#22C55E]/10 px-4 py-3 rounded-lg">
                            {{ lang === 'id' ? 'Pesan berhasil dikirim! Kami akan menghubungi Anda segera.' : 'Message sent successfully! We will contact you shortly.' }}
                        </div>
                        <div v-if="status === 'error'" class="text-sm text-red-500 bg-red-500/10 px-4 py-3 rounded-lg">
                            {{ lang === 'id' ? 'Mohon periksa kembali data yang Anda isi.' : 'Please check the data you entered.' }}
                        </div>

                        <BaseButton type="submit" variant="primary" size="lg" class="w-full" :class="isSubmitting ? 'opacity-70 pointer-events-none' : ''">
                            {{ isSubmitting ? (lang === 'id' ? 'Mengirim...' : 'Sending...') : (lang === 'id' ? 'Kirim' : 'Send') }}
                        </BaseButton>
                    </form>
                </div>
            </div>
        </div>
    </section>
</template>
