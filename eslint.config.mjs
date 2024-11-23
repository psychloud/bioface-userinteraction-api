import globals from 'globals';
import pluginJs from '@eslint/js';
import airbnbBase from 'eslint-config-airbnb-base';
import importPlugin from 'eslint-plugin-import';

/** @type {import('eslint').Linter.Config[]} */
export default [
  {
    files: ['**/*.js'],
    languageOptions: {
      sourceType: 'commonjs',
      globals: globals.node,
    },
    plugins: {
      import: importPlugin,
    },
    rules: {
      'no-console': 'off',
      'indent': ['error', 2],
      'linebreak-style': ['error', 'unix'],
      'quotes': ['error', 'single'],
      'semi': ['error', 'always'],
      'comma-dangle': ['error', 'never'],
      'no-unused-vars': ['error', { 'argsIgnorePattern': 'next' }],
    },
  },
  pluginJs.configs.recommended,
  airbnbBase,
];