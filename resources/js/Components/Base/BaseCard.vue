<script setup>
defineProps({
    hover: {
        type: Boolean,
        default: true,
    },
    padding: {
        type: String,
        default: 'p-8',
    },
});
</script>

<template>
    <div
        class="bg-white dark:bg-[#1e293b] rounded-2xl border border-slate-100 dark:border-slate-700 shadow-sm transition-all duration-300"
        :class="[padding, hover ? 'hover:shadow-md hover:-translate-y-1' : '']"
    >
        <slot />
    </div>
</template>
