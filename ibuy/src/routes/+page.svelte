
<div class="container h-full mx-auto flex justify-center items-center">
	<div class="space-y-10 text-center flex flex-col items-center">
		<h2 class="h2">Sell your phone <i>in minutes</i>.</h2>
		<!-- Animated Logo -->
		<figure>
			<section class="img-bg" />
            <img alt="File:IPhone X vector.svg" src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/IPhone_X_vector.svg/299px-IPhone_X_vector.svg.png?20171027235944" decoding="async" width="299" height="600" srcset="https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/IPhone_X_vector.svg/449px-IPhone_X_vector.svg.png?20171027235944 1.5x, https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/IPhone_X_vector.svg/598px-IPhone_X_vector.svg.png?20171027235944 2x" data-file-width="360" data-file-height="722" title="" style="">
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
	figure svg,
	.img-bg {
		@apply w-64 h-64 md:w-80 md:h-80;
	}
	.img-bg {
		@apply absolute z-[-1] rounded-full blur-[50px] transition-all;
		animation: pulse 5s cubic-bezier(0, 0, 0, 0.5) infinite,
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
