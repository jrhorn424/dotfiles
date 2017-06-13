// https://hyper.is/#cfg

module.exports = {
  config: {
    fontSize: 14,
    fontFamily: [
      'Fira Code',
      'Hack',
      'Menlo',
      'DejaVu Sans Mono',
      'Consolas',
      'Lucida Console',
      'monospace'
    ].join(', '),

    cursorColor: 'rgba(255,255,255,0.4)',
    cursorShape: 'BLOCK',

    foregroundColor: '#c5c5c5',
    backgroundColor: '#000000',
    borderColor: '#333',
    padding: '16px',

    termCSS: `
      x-screen a { color: inherit; }
      x-screen x-row { font-variant-ligatures: initial; }
    `,

    env: {},

    bell: false,

    colors: [
      '#101010',
      '#252525',
      '#464646',
      '#525252',
      '#ababab',
      '#b9b9b9',
      '#e3e3e3',
      '#f7f7f7',
      '#7c7c7c',
      '#999999',
      '#a0a0a0',
      '#8e8e8e',
      '#868686',
      '#686868',
      '#747474',
      '#5e5e5e'
    ]
  },

  plugins: [
    'hyperlinks'
  ]
};
