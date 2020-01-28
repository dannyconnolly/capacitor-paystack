import { WebPlugin } from '@capacitor/core';
import { CapacitorPaystackPlugin } from './definitions';

export class CapacitorPaystackWeb extends WebPlugin implements CapacitorPaystackPlugin {
  constructor() {
    super({
      name: 'CapacitorPaystack',
      platforms: ['web']
    });
  }

  async echo(options: { value: string }): Promise<{value: string}> {
    console.log('ECHO', options);
    return options;
  }
}

const CapacitorPaystack = new CapacitorPaystackWeb();

export { CapacitorPaystack };

import { registerWebPlugin } from '@capacitor/core';
registerWebPlugin(CapacitorPaystack);
