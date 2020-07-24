import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Disfruta un Cocktails", "Busca aca abajo"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };