<script setup>
defineProps({
    variant: {
        type: String,
        default: 'primary',
    },
    size: {
        type: String,
        default: 'md',
    },
    as: {
        type: String,
        default: 'button',
    },
    href: {
        type: String,
        default: null,
    },
});

const variantClasses = {
    primary: 'bg-[#013A3B] text-white hover:bg-[#002B2C] border border-[#013A3B] dark:bg-teal-700 dark:border-teal-700 dark:hover:bg-teal-800',
    outline: 'bg-transparent text-[#013A3B] border border-[#013A3B] hover:bg-[#013A3B] hover:text-white dark:text-teal-400 dark:border-teal-500 dark:hover:bg-teal-700 dark:hover:text-white dark:hover:border-teal-700',
    ghost: 'bg-transparent text-[#013A3B] hover:bg-[#F1F5F9] border border-transparent dark:text-teal-400 dark:hover:bg-slate-800',
};

const sizeClasses = {
    sm: 'px-4 py-2 text-sm',
    md: 'px-6 py-3 text-sm',
    lg: 'px-8 py-4 text-base',
};
</script>

<template>
    <component
        :is="href ? 'a' : as"
        :href="href"
        class="inline-flex items-center justify-center gap-2 font-medium rounded-lg transition-all duration-200 cursor-pointer focus:outline-none focus:ring-2 focus:ring-[#013A3B] focus:ring-offset-2 dark:focus:ring-teal-500"
        :class="[variantClasses[variant], sizeClasses[size]]"
    >
        <slot />
    </component>
</template>
