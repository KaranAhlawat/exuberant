import { defineConfig } from "vite";
import melangePlugin from "vite-plugin-melange";

export default defineConfig({
	plugins: [
		melangePlugin({
			buildCommand: "esy dune build",
			watchCommand: "esy dune build --watch"
		})
	]
})
