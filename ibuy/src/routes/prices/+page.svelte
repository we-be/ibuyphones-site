<script lang="ts">
    import ClipboardIcon from "$lib/ClipboardIcon.svelte";
    const arr = [
        {
            priceUsed: 50,
            name: "iPhone 11",
            priceNew: 100,
        },
        {
            priceUsed: 100,
            name: "iPhone 12",
            priceNew: 150,
        },
        {
            priceUsed: 130,
            name: "iPhone 13",
            priceNew: 225,
        },
        {
            priceUsed: 140,
            name: "iPhone 14",
            priceNew: 300,
        },
        {
            priceUsed: 200,
            name: "iPhone 15",
            priceNew: 400,
        },
    ];

    function callEd() {
        window.location.href = 'tel:404-276-3869';
    }

    function copyNumber() {
        navigator.clipboard.writeText('404-276-3869').then(() => {
            alert('Number copied to clipboard!');
        });
    }
</script>

<h1 class="h1 p-4">Device Prices</h1>
<!-- Responsive Container (recommended) -->
<div class="table-container p-4">
    <!-- Native Table Element -->
    <iframe
        width=500
        height=1000
        src="https://docs.google.com/spreadsheets/d/1tJQ-WdQZc91cCw0ExvPe6-lOkRuHVRbIsj4D2nNwuTo/pubhtml?gid=1216102336&amp;single=true&amp;widget=true&amp;headers=false">
        style="border:none;"
        scrolling="auto"
        allowfullscreen
        style="border: 2px solid #000;"
    </iframe>
</div>


<div class="flex justify-center p-2 space-x-4">
    <button class="btn variant-filled float-button" on:click={callEd} on:keydown={(e) => { if (e.key === 'Enter' || e.key === ' ') callEd(); }} type="button">
        <div class="h3 p-2">Pricing questions? <u>CALL ED!</u></div>
        <b>404-276-3869</b>
    </button>
    <button type="button" class="btn-icon variant-filled" on:click={copyNumber} on:keydown={(e) => { if (e.key === 'Enter' || e.key === ' ') copyNumber(); }}>
        <ClipboardIcon size="20px" />
    </button>
</div>


<style lang="postcss">
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
