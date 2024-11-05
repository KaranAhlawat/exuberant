import { defineConfig } from "vite";
import melangePlugin from "vite-plugin-melange";
import nodeResolve from "@rollup/plugin-node-resolve";

export default defineConfig({
	plugins: [
		nodeResolve(),
		melangePlugin({
      emitDir: "src",
      buildTarget: "output",
      buildCommand: "exit 0",
			watchCommand: "esy dune build @react --watch"
		})
	]
})
