<script lang="ts">
    import ClipboardIcon from "$lib/ClipboardIcon.svelte";
    const arr = [
        {
            priceUser: 80,
            name: "iPhone 11",
            priceNew: 80,
        },
        {
            priceUsed: 100,
            name: "iPhone 12",
            priceNew: 120,
        },
        {
            priceUsed: 130,
            name: "iPhone 13",
            priceNew: 200,
        },
        {
            priceUsed: 180,
            name: "iPhone 14",
            priceNew: 302,
        },
        {
            priceUsed: 200,
            name: "iPhone 15",
            priceNew: 122,
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
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Name</th>
                <th>Price Minimum</th>
                <th>Price Maximum</th>
            </tr>
        </thead>
        <tbody>
            {#each arr as row, i}
                <tr>
                    <td><b>{row.name}</b></td>
                    <td>{row.priceUsed}</td>
                    <td>{row.priceNew}</td>
                </tr>
            {/each}
        </tbody>
        <tfoot>
            <tr>
              <td colspan="3">
                <div style="max-height: 45px; overflow: auto;">
                  <small>
                    The price of a phone is determined by various factors, including the condition of the device, the associated carrier, and any outstanding financial obligations. The condition of the phone, which encompasses its physical state and functionality, directly impacts its resale value. Carrier agreements and pricing structures also influence the overall cost of the device, as carriers may offer exclusive deals or discounts on specific models. Furthermore, the amount owed on the phone plays a significant role in determining its price, as any remaining balance on a financing plan or contract can affect its resale value. Potential buyers may find a device more attractive if it is fully paid off, as they would not need to assume any additional financial responsibilities. Conversely, a substantial outstanding balance may lower the phone's price. For further clarification on these terms and their impact on the price of a phone, please contact our support team at the number provided below.
                  </small>
                </div>
              </td>
            </tr>
          </tfoot>
    </table>
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
