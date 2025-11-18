#!/bin/bash

echo "Installing core UI & utilities..."
npm install @hookform/resolvers class-variance-authority clsx cmdk date-fns embla-carousel-react input-otp lucide-react next-themes react-hook-form react-resizable-panels recharts sonner tailwind-merge tailwindcss-animate zod swr

echo "Installing auth/back-end..."
npm install @clerk/nextjs @supabase/ssr

echo "Installing other UI libraries..."
npm install vaul

echo "Installing analytics..."
npm install @vercel/analytics

echo "Installing dev dependencies..."
npm install -D @tailwindcss/postcss tw-animate-css

echo "Initializing shadcn/ui..."
npx shadcn-ui init

npx shadcn-ui add card
npx shadcn-ui add select
npx shadcn-ui add accordion
npx shadcn-ui add alert-dialog
npx shadcn-ui add aspect-ratio
npx shadcn-ui add avatar
npx shadcn-ui add checkbox
npx shadcn-ui add collapsible
npx shadcn-ui add context-menu
npx shadcn-ui add dialog
npx shadcn-ui add dropdown-menu
npx shadcn-ui add hover-card
npx shadcn-ui add label
npx shadcn-ui add menubar
npx shadcn-ui add navigation-menu
npx shadcn-ui add popover
npx shadcn-ui add progress
npx shadcn-ui add radio-group
npx shadcn-ui add scroll-area
npx shadcn-ui add select
npx shadcn-ui add separator
npx shadcn-ui add slider
npx shadcn-ui add slot
npx shadcn-ui add switch
npx shadcn-ui add tabs
npx shadcn-ui add toast
npx shadcn-ui add toggle
npx shadcn-ui add toggle-group
npx shadcn-ui add tooltip

echo "🎉 Setup complete!"
