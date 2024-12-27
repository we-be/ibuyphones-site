<script lang="ts">
    import { onMount } from "svelte";
    import PhoneIcon from "$lib/PhoneIcon.svelte"

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
                class="btn variant-filled float-button"
                href="/prices"
                target="_blank"
                rel="noreferrer"
            >
                See Prices
            </a>
            <!-- <button type="button" class="btn-icon variant-filled">
                <PhoneIcon size="20px" color="black" />
            </button> -->
        </div>
        <div class="space-y-2">
            <p>1135 Chantilly Crescent Ne Atlanta Ga 30324</p>
            <p><code class="code">404-276-3869</code></p>
            <p><code class="code">edfaria95@gmail.com</code></p>
        </div>
    </div>
</div>

<style lang="postcss">
    figure {
        display: flex;
        position: relative;
        flex-direction: column;
    }
    .iphone-container {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 16rem;
        height: 16rem;
        perspective: 1000px;
    }
    @media (min-width: 768px) {
        .iphone-container {
            width: 20rem;
            height: 20rem;
        }
    }
    .iphone-image {
        max-width: 100%;
        max-height: 100%;
        position: absolute;
        opacity: 0;
        transform: rotateY(var(--rotation)) translateZ(200px);
        transition:
            opacity 0.5s,
            transform 0.5s;
    }
    .iphone-image.active {
        opacity: 1;
        transform: rotateY(var(--rotation)) translateZ(0);
    }
    .img-bg {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 100%;
        height: 100%;
        z-index: -1;
        border-radius: 50%;
        filter: blur(50px);
        opacity: 0.5;
    }

    .float-button {
        animation: float-up 5s ease-in-out infinite;
    }

    @keyframes float-up {
        0% {
            transform: translateY(0);
        }
        50% {
            transform: translateY(-4px);
        }
        100% {
            transform: translateY(0);
        }
    }
</style>
