/*

 Copyright The Closure Library Authors.
 SPDX-License-Identifier: Apache-2.0
*/
'use strict';/*

 Copyright (c) 2016 The Polymer Project Authors. All rights reserved.
 This code may only be used under the BSD style license found at http://polymer.github.io/LICENSE.txt
 The complete set of authors may be found at http://polymer.github.io/AUTHORS.txt
 The complete set of contributors may be found at http://polymer.github.io/CONTRIBUTORS.txt
 Code distributed by Google as part of the polymer project is also
 subject to an additional IP rights grant found at http://polymer.github.io/PATENTS.txt
*/
(()=>{if(window.customElements){var h=window.HTMLElement,m=window.customElements.define,n=window.customElements.get,k=new Map,l=new Map,e=!1,f=!1;window.HTMLElement=function(){if(!e){var a=k.get(this.constructor);a=n.call(window.customElements,a);f=!0;return new a}e=!1};window.HTMLElement.prototype=h.prototype;window.HTMLElement.es5Shimmed=!0;Object.defineProperty(window,"customElements",{value:window.customElements,configurable:!0,writable:!0});Object.defineProperty(window.customElements,"define",
{value:(a,b)=>{const c=b.prototype,g=class extends h{constructor(){super();Object.setPrototypeOf(this,c);f||(e=!0,b.call(this));f=!1}},d=g.prototype;g.observedAttributes=b.observedAttributes;d.connectedCallback=c.connectedCallback;d.disconnectedCallback=c.disconnectedCallback;d.attributeChangedCallback=c.attributeChangedCallback;d.adoptedCallback=c.adoptedCallback;k.set(b,a);l.set(a,b);m.call(window.customElements,a,g)},configurable:!0,writable:!0});Object.defineProperty(window.customElements,"get",
{value:a=>l.get(a),configurable:!0,writable:!0});if(navigator.userAgent.match(/Version\/(10\..*|11\.0\..*)Safari/)){const a=HTMLElement.prototype.constructor;Object.defineProperty(HTMLElement.prototype,"constructor",{configurable:!0,get(){return a},set(b){Object.defineProperty(this,"constructor",{value:b,configurable:!0,writable:!0})}})}}})();
//# sourceMappingURL=blaze-out/k8-opt/bin/third_party/javascript/custom_elements/fast-shim.js.sourcemap
