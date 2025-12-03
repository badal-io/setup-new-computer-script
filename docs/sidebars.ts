// docs/sidebars.ts
import type {SidebarsConfig} from '@docusaurus/plugin-content-docs';

const sidebars: SidebarsConfig = {
  tutorialSidebar: [
    'intro',
    {
      type: 'category',
      label: 'Usage',
      items: ['usage/quick-install', 'usage/manual-install', 'usage/post-installation'],
    },
    {
      type: 'category',
      label: 'What Gets Installed',
      items: [
        'installed/shell-setup',
        'installed/cli-tools',
        'installed/languages',
        'installed/applications',
        'installed/system-tweaks',
        'installed/git-configuration',
      ],
    },
    {
      type: 'category',
      label: 'Core Scripts',
      items: ['scripts/setup-new-computer', 'scripts/badal-io', 'scripts/functions'],
    },
    'customization',
    'troubleshooting',
  ],
};

export default sidebars;
