<script lang="ts">
    import { onMount } from "svelte";

    let currentImageIndex = 0;
    const images = [
        "https://img.xfinitymobile.com/image/fetch/e_trim/w_300,h_420,c_fit,f_auto,q_auto,fl_lossy/https%3A%2F%2Fimg.xfinitymobile.com%2Fimage%2Fupload%2Fv1694556635%2Fclient%2Fcatalog%2Fdevices%2Fapple%2FApple_iPhone-15-Pro-Max_Blue-Titanium_PRI.png",
        "https://dv9dhd03d71d4.cloudfront.net/eyJidWNrZXQiOiJwcm9kLXd3dy1hc3NldHMtcGVyZmVjdHJlYyIsImtleSI6ImltYWdlcy9wcm9kdWN0cy9zbWFydHBob25lcy9QZXJmZWN0UmVjX1Bob25lX0dvb2dsZS1QaXhlbC04LVByby5wbmciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjYwMCwiZml0IjoiY292ZXIifX19",
        "https://www.att.com/scmsassets/global/devices/phones/samsung/samsung-galaxy-s24/carousel/cobalt-violet-1.png",
        // Add more image URLs as needed
    ];

    function rotateImage() {
        currentImageIndex = (currentImageIndex + 1) % images.length;
        images.forEach((_, index) => {
            const imageElement = document.querySelector(
                `.iphone-image:nth-child(${index + 1})`,
            ) as HTMLImageElement | null;
            if (imageElement) {
                imageElement.style.setProperty(
                    "--rotation",
                    `${((currentImageIndex - index + images.length) % images.length) * 120}deg`,
                );
            }
        });
    }

    onMount(() => {
        const interval = setInterval(rotateImage, 3000); // Change image every 3 seconds

        return () => {
            clearInterval(interval);
        };
    });
</script>

<div class="container h-full mx-auto flex justify-center items-center">
    <div class="space-y-10 text-center flex flex-col items-center">
        <h2 class="h2">
            <span class="gradient-heading"
                >Sell your phone <i>in minutes</i>.</span
            >
        </h2>
        <!-- Animated Logo -->
        <figure>
            <section class="img-bg" />
            <div class="iphone-container">
                {#each images as image, index}
                    <img
                        alt="iPhone"
                        src={image}
                        decoding="async"
                        class="iphone-image"
                        class:active={index === currentImageIndex}
                        style="--rotation: {index * 120}deg;"
                        title=""
                    />
                {/each}
            </div>
        </figure>
        <!-- / -->
        <div class="flex justify-center space-x-2">
            <a
                class="btn variant-filled"
                href="https://skeleton.dev/"
                target="_blank"
                rel="noreferrer"
            >
                See Prices
            </a>
        </div>
        <div class="space-y-2">
            <p>or contact us:</p>
            <p><code class="code">+1-888-888-8888</code></p>
            <p><code class="code">edfaria95@gmail.com</code></p>
        </div>
    </div>
</div>

<style lang="postcss">
    figure {
        @apply flex relative flex-col;
    }
    .iphone-container {
        @apply flex justify-center items-center w-64 h-64 md:w-80 md:h-80;
        perspective: 1000px;
    }
    .iphone-image {
        @apply max-w-full max-h-full absolute;
        opacity: 0;
        transform: rotateY(var(--rotation)) translateZ(200px);
        transition:
            opacity 0.5s,
            transform 0.75s;
    }
    .iphone-image.active {
        opacity: 1;
        transform: rotateY(var(--rotation)) translateZ(0);
    }
    .img-bg {
        @apply absolute z-[-1] rounded-full blur-[50px] transition-all;
        animation:
            pulse 5s cubic-bezier(0, 0, 0, 0.5) infinite,
            glow 5s linear infinite;
    }
    @keyframes glow {
        0% {
            @apply bg-primary-400/50;
        }
        33% {
            @apply bg-secondary-400/50;
        }
        66% {
            @apply bg-tertiary-400/50;
        }
        100% {
            @apply bg-primary-400/50;
        }
    }
    @keyframes pulse {
        50% {
            transform: scale(1.5);
        }
    }
</style>
