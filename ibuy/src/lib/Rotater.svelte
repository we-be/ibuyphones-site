<script lang="ts">
    import { onMount } from 'svelte';
  
    let currentImageIndex = 0;
    const images = [
      'image1.svg',
      'image2.svg',
      'image3.svg',
      // Add more image URLs as needed
    ];
  
    function rotateImage() {
      currentImageIndex = (currentImageIndex + 1) % images.length;
    }
  
    onMount(() => {
      const interval = setInterval(rotateImage, 3000); // Change image every 3 seconds
  
      return () => {
        clearInterval(interval);
      };
    });
  </script>
  
  <div class="iphone-container">
    <img src={images[currentImageIndex]} alt="iPhone" class="iphone-image" />
  </div>
  
  <style>
    .iphone-container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100%;
    }
  
    .iphone-image {
      max-width: 100%;
      max-height: 100%;
    }
  </style>