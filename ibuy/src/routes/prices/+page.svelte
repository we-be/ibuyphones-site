<script lang="ts">
    const arr = [
        {
            priceUsed: 122,
            name: "iphone 11",
            priceNew: 100,
        },
        {
            priceUsed: 100,
            name: "iphone 12",
            priceNew: 120,
        },
        {
            priceUsed: 102,
            name: "iphone 13",
            priceNew: 200,
        },
        {
            priceUsed: 100,
            name: "iphone 14",
            priceNew: 302,
        },
        {
            priceUsed: 120,
            name: "iphone 15",
            priceNew: 122,
        },
    ];
</script>

<h1 class="h1 p-4">Device Prices</h1>
<!-- Responsive Container (recommended) -->
<div class="table-container p-4">
    <!-- Native Table Element -->
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Name</th>
                <th>Used</th>
                <th>New</th>
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


<div class="p-6">
    <div class="card border border-primary-500/30">
        <div class="h3 p-2">Pricing questions? <u>CALL ED!</u></div>
        <div class="text-primary-500 h2 p-4">
            <b>404-276-3869</b>
        </div>
    </div>
</div>
