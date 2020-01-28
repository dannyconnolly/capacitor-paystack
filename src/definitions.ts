declare module "@capacitor/core" {
  interface PluginRegistry {
    CapacitorPaystack: CapacitorPaystackPlugin;
  }
}

export interface CapacitorPaystackPlugin {
  echo(options: { value: string }): Promise<{value: string}>;
}
