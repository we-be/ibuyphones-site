<script lang="ts">
	import '../app.postcss';
	import { AppShell, AppBar } from '@skeletonlabs/skeleton';
</script>

<!-- App Shell -->
<AppShell>
	<svelte:fragment slot="header">
		<!-- App Bar -->
		<AppBar>
			<svelte:fragment slot="lead">
				<a href="/"><strong class="text-xl uppercase">iBuy Phones</strong></a>
			</svelte:fragment>
			<svelte:fragment slot="trail">
				<a
					class="btn btn-sm variant-ghost-surface"
					href="/prices"
				>
					<iframe src="https://docs.google.com/spreadsheets/d/1tJQ-WdQZc91cCw0ExvPe6-lOkRuHVRbIsj4D2nNwuTo/pubhtml?gid=1216102336&amp;single=true&amp;widget=true&amp;headers=false"></iframe>
				</a>
				<a
					class="btn btn-sm variant-ghost-surface"
					href="https://github.com/we-be/ibuyphones-site"
					target="_blank"
					rel="noreferrer"
				>
					Contact
				</a>
			</svelte:fragment>
		</AppBar>
	</svelte:fragment>
	<!-- Page Route Content -->
	<slot />
</AppShell>
