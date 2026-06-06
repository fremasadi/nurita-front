<script setup>
import { computed, inject } from 'vue';

const props = defineProps({
    contact: Object,
});

const lang = inject('lang');

const content = computed(() => ({
    tagline: lang.value === 'id'
        ? 'Membantu Bisnis Anda Lebih Efisien dengan Sistem Digital'
        : 'Helping Your Business Run More Efficiently with Digital Systems',
    navigationTitle: lang.value === 'id' ? 'Navigasi' : 'Navigation',
    servicesTitle: lang.value === 'id' ? 'Layanan' : 'Services',
    copyright: lang.value === 'id' ? 'Hak cipta dilindungi.' : 'All rights reserved.',
}));

const navLinks = computed(() => [
    { label: lang.value === 'id' ? 'Beranda' : 'Home', href: '#beranda' },
    { label: lang.value === 'id' ? 'Layanan' : 'Services', href: '#layanan' },
    { label: lang.value === 'id' ? 'Keunggulan' : 'Advantages', href: '#keunggulan' },
    { label: lang.value === 'id' ? 'Portofolio' : 'Portfolio', href: '#portofolio' },
    { label: lang.value === 'id' ? 'Cara Kerja' : 'How It Works', href: '#cara-kerja' },
    { label: lang.value === 'id' ? 'Hubungi Kami' : 'Contact Us', href: '#kontak' },
]);

const serviceLinks = computed(() => [
    { label: lang.value === 'id' ? 'Pengembangan Web' : 'Web Development', href: '#layanan' },
    { label: lang.value === 'id' ? 'Aplikasi Mobile' : 'Mobile Applications', href: '#layanan' },
    { label: lang.value === 'id' ? 'Desain UI/UX' : 'UI/UX Design', href: '#layanan' },
    { label: lang.value === 'id' ? 'Sistem ERP' : 'ERP Systems', href: '#layanan' },
]);

const socialLinks = computed(() => [
    {
        label: 'Instagram',
        href: props.contact?.instagram_url,
        icon: `<svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24"><path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zm0-2.163c-3.259 0-3.667.014-4.947.072-4.358.2-6.78 2.618-6.98 6.98-.059 1.281-.073 1.689-.073 4.948 0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98 1.281.058 1.689.072 4.948.072 3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98-1.281-.059-1.69-.073-4.949-.073zm0 5.838c-3.403 0-6.162 2.759-6.162 6.162s2.759 6.163 6.162 6.163 6.162-2.759 6.162-6.163c0-3.403-2.759-6.162-6.162-6.162zm0 10.162c-2.209 0-4-1.79-4-4 0-2.209 1.791-4 4-4s4 1.791 4 4c0 2.21-1.791 4-4 4zm6.406-11.845c-.796 0-1.441.645-1.441 1.44s.645 1.44 1.441 1.44c.795 0 1.439-.645 1.439-1.44s-.644-1.44-1.439-1.44z"/></svg>`,
    },
    {
        label: 'Facebook',
        href: props.contact?.facebook_url,
        icon: `<svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24"><path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"/></svg>`,
    },
].filter((link) => link.href));
</script>

<template>
    <footer class="bg-white dark:bg-[#0f172a] border-t border-slate-100 dark:border-slate-800">
        <div class="max-w-7xl mx-auto px-6 lg:px-8 py-16">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-10">
                <!-- Brand -->
                <div class="md:col-span-2 space-y-4">
                    <a href="#" class="flex items-center gap-2">
                        <span class="text-xl font-bold text-[#013A3B] dark:text-teal-400">Nurita</span>
                    </a>
                    <p class="text-[#64748B] dark:text-slate-400 text-sm leading-relaxed max-w-xs">
                        {{ content.tagline }}
                    </p>
                    <div class="flex gap-3">
                        <a
                            v-for="social in socialLinks"
                            :key="social.label"
                            :href="social.href"
                            :aria-label="social.label"
                            target="_blank"
                            rel="noopener noreferrer"
                            class="w-9 h-9 rounded-lg bg-[#F1F5F9] dark:bg-slate-800 flex items-center justify-center text-[#64748B] dark:text-slate-400 hover:bg-[#013A3B] dark:hover:bg-teal-700 hover:text-white transition-all duration-200"
                        >
                            <span v-html="social.icon"></span>
                        </a>
                    </div>
                </div>

                <!-- Navigation -->
                <div class="space-y-4">
                    <h4 class="font-semibold text-[#001818] dark:text-slate-100 text-sm">{{ content.navigationTitle }}</h4>
                    <ul class="space-y-2">
                        <li v-for="link in navLinks" :key="link.href">
                            <a :href="link.href" class="text-[#64748B] dark:text-slate-400 text-sm hover:text-[#013A3B] dark:hover:text-teal-400 transition-colors duration-200">
                                {{ link.label }}
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- Services -->
                <div class="space-y-4">
                    <h4 class="font-semibold text-[#001818] dark:text-slate-100 text-sm">{{ content.servicesTitle }}</h4>
                    <ul class="space-y-2">
                        <li v-for="link in serviceLinks" :key="link.label">
                            <a :href="link.href" class="text-[#64748B] dark:text-slate-400 text-sm hover:text-[#013A3B] dark:hover:text-teal-400 transition-colors duration-200">
                                {{ link.label }}
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Bottom Bar -->
        <div class="border-t border-slate-100 dark:border-slate-800 py-6">
            <div class="max-w-7xl mx-auto px-6 lg:px-8 text-center">
                <p class="text-[#64748B] dark:text-slate-500 text-sm">
                    © {{ new Date().getFullYear() }} Nurita Tech. {{ content.copyright }}
                </p>
            </div>
        </div>
    </footer>
</template>
