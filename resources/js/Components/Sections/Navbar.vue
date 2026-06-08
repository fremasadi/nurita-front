<script setup>
import { computed, ref, inject, onMounted, onUnmounted } from 'vue';

const lang = inject('lang');
const toggleLang = () => { lang.value = lang.value === 'id' ? 'en' : 'id'; };

const isDark = inject('isDark');
const toggleDark = () => { isDark.value = !isDark.value; };

const isScrolled = ref(false);
const isMobileOpen = ref(false);

const navLinks = computed(() => [
    { label: lang.value === 'id' ? 'Layanan' : 'Services', href: '/#layanan' },
    { label: lang.value === 'id' ? 'Keunggulan' : 'Advantages', href: '/#keunggulan' },
    { label: lang.value === 'id' ? 'Portofolio' : 'Portfolio', href: '/#portofolio' },
    { label: lang.value === 'id' ? 'Cara Kerja' : 'How It Works', href: '/#cara-kerja' },
    { label: lang.value === 'id' ? 'Hubungi Kami' : 'Contact Us', href: '/#kontak' },
]);

const handleScroll = () => { isScrolled.value = window.scrollY > 20; };

onMounted(() => window.addEventListener('scroll', handleScroll));
onUnmounted(() => window.removeEventListener('scroll', handleScroll));
</script>

<template>
    <header
        class="fixed top-0 left-0 right-0 z-50 transition-all duration-300 bg-white dark:bg-[#0f172a] border-b border-slate-100 dark:border-slate-800"
        :class="isScrolled ? 'shadow-sm' : ''"
    >
        <div class="max-w-7xl mx-auto px-6 lg:px-8">
            <div class="flex items-center justify-between h-16">
                <!-- Logo -->
                <a href="/#beranda" class="flex items-center gap-2">
                    <img src="/assets/icons/ic_logo.png" alt="Nurita Logo" class="h-8 w-auto dark:brightness-200" />
                    <span class="text-xl font-bold text-[#013A3B] dark:text-teal-400">Nurita</span>
                </a>

                <!-- Desktop Nav -->
                <nav class="hidden md:flex items-center gap-8">
                    <a
                        v-for="link in navLinks"
                        :key="link.label"
                        :href="link.href"
                        class="text-sm font-medium text-slate-600 dark:text-slate-300 hover:text-[#013A3B] dark:hover:text-teal-400 transition-colors duration-200"
                    >
                        {{ link.label }}
                    </a>
                </nav>

                <!-- Language + Dark Mode Toggle -->
                <div class="hidden md:flex items-center gap-2">
                    <!-- Language -->
                    <button
                        @click="toggleLang"
                        class="flex items-center gap-1 rounded-lg border border-slate-200 dark:border-slate-700 overflow-hidden text-xs font-semibold transition-all duration-200 hover:border-[#013A3B] dark:hover:border-teal-500"
                    >
                        <span
                            class="px-3 py-1.5 transition-all duration-200"
                            :class="lang === 'id' ? 'bg-[#013A3B] text-white' : 'text-slate-400 dark:text-slate-500 hover:text-slate-600'"
                        >ID</span>
                        <span
                            class="px-3 py-1.5 transition-all duration-200"
                            :class="lang === 'en' ? 'bg-[#013A3B] text-white' : 'text-slate-400 dark:text-slate-500 hover:text-slate-600'"
                        >EN</span>
                    </button>

                    <!-- Dark Mode -->
                    <button
                        @click="toggleDark"
                        aria-label="Toggle dark mode"
                        class="w-9 h-9 flex items-center justify-center rounded-lg border border-slate-200 dark:border-slate-700 text-slate-500 dark:text-slate-300 hover:text-[#013A3B] dark:hover:text-teal-400 hover:border-[#013A3B] dark:hover:border-teal-500 transition-all duration-200"
                    >
                        <svg v-if="isDark" class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 3v1m0 16v1m9-9h-1M4 12H3m15.364-6.364l-.707.707M6.343 17.657l-.707.707M17.657 17.657l-.707-.707M6.343 6.343l-.707-.707M12 8a4 4 0 100 8 4 4 0 000-8z"/>
                        </svg>
                        <svg v-else class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20.354 15.354A9 9 0 018.646 3.646 9.003 9.003 0 0012 21a9.003 9.003 0 008.354-5.646z"/>
                        </svg>
                    </button>
                </div>

                <!-- Mobile Hamburger -->
                <button
                    class="md:hidden p-2 text-slate-600 dark:text-slate-300 hover:text-[#013A3B] dark:hover:text-teal-400"
                    @click="isMobileOpen = !isMobileOpen"
                >
                    <svg v-if="!isMobileOpen" class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                    </svg>
                    <svg v-else class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>
        </div>

        <!-- Mobile Menu -->
        <div v-if="isMobileOpen" class="md:hidden bg-white dark:bg-[#0f172a] border-t border-slate-100 dark:border-slate-800 px-6 py-4">
            <nav class="flex flex-col gap-4">
                <a
                    v-for="link in navLinks"
                    :key="link.label"
                    :href="link.href"
                    class="text-sm font-medium text-slate-600 dark:text-slate-300 hover:text-[#013A3B] dark:hover:text-teal-400"
                    @click="isMobileOpen = false"
                >
                    {{ link.label }}
                </a>
                <div class="flex items-center gap-2 mt-2">
                    <button
                        @click="toggleLang"
                        class="flex items-center gap-1 rounded-lg border border-slate-200 dark:border-slate-700 overflow-hidden text-xs font-semibold"
                    >
                        <span class="px-3 py-1.5 transition-all duration-200" :class="lang === 'id' ? 'bg-[#013A3B] text-white' : 'text-slate-400 dark:text-slate-500'">ID</span>
                        <span class="px-3 py-1.5 transition-all duration-200" :class="lang === 'en' ? 'bg-[#013A3B] text-white' : 'text-slate-400 dark:text-slate-500'">EN</span>
                    </button>
                    <button
                        @click="toggleDark"
                        class="w-9 h-9 flex items-center justify-center rounded-lg border border-slate-200 dark:border-slate-700 text-slate-500 dark:text-slate-300 transition-all duration-200"
                    >
                        <svg v-if="isDark" class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 3v1m0 16v1m9-9h-1M4 12H3m15.364-6.364l-.707.707M6.343 17.657l-.707.707M17.657 17.657l-.707-.707M6.343 6.343l-.707-.707M12 8a4 4 0 100 8 4 4 0 000-8z"/>
                        </svg>
                        <svg v-else class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20.354 15.354A9 9 0 018.646 3.646 9.003 9.003 0 0012 21a9.003 9.003 0 008.354-5.646z"/>
                        </svg>
                    </button>
                </div>
            </nav>
        </div>
    </header>
</template>
