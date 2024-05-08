<script lang="ts">
    const arr = [
        {
            priceUsed: 122,
            name: "iphone 11",
            priceNew: 100,
            priceCracked: 1.08,
        },
        {
            priceUsed: 100,
            name: "iphone 12",
            priceNew: 120,
            priceCracked: 4.06,
        },
        {
            priceUsed: 102,
            name: "iphone 13",
            priceNew: 200,
            priceCracked: 6.94,
        },
        {
            priceUsed: 100,
            name: "iphone 14",
            priceNew: 302,
            priceCracked: 9.02,
        },
        {
            priceUsed: 120,
            name: "iphone 15",
            priceNew: 122,
            priceCracked: 10.81,
        },
    ];
</script>

<!-- Responsive Container (recommended) -->
<div class="table-container">
    <!-- Native Table Element -->
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Name</th>
                <th>Used</th>
                <th>New</th>
                <th>Cracked</th>
            </tr>
        </thead>
        <tbody>
            {#each arr as row, i}
                <tr>
                    <td>{row.name}</td>
                    <td>{row.priceUsed}</td>
                    <td>{row.priceNew}</td>
                    <td>{row.priceCracked}</td>
                </tr>
            {/each}
        </tbody>
    </table>
</div>
