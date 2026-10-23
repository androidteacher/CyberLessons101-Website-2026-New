/* Collapsible top menu for small screens (see mobile.css). */
(function () {
  "use strict";

  var nav = document.querySelector("nav");
  var toggle = nav && nav.querySelector(".cl-nav-toggle");
  var links = nav && nav.querySelector(".cl-nav-links");
  if (!toggle || !links) return;

  var mobile = window.matchMedia("(max-width: 1439.98px)");
  var groups = Array.prototype.slice.call(links.querySelectorAll(":scope > .group"));

  function setOpen(open) {
    nav.classList.toggle("cl-open", open);
    toggle.setAttribute("aria-expanded", open ? "true" : "false");
    toggle.setAttribute("aria-label", open ? "Close menu" : "Open menu");
    if (!open) groups.forEach(function (g) { setSub(g, false); });
  }

  function setSub(group, open) {
    group.classList.toggle("cl-sub-open", open);
    var b = group.querySelector(":scope > button");
    if (b) b.setAttribute("aria-expanded", open ? "true" : "false");
  }

  toggle.addEventListener("click", function () {
    setOpen(!nav.classList.contains("cl-open"));
  });

  // section headings (Challenges, Lesson Plans, ...) expand in place on mobile
  groups.forEach(function (g) {
    var b = g.querySelector(":scope > button");
    if (!b) return;
    b.addEventListener("click", function () {
      if (!mobile.matches) return;
      var open = !g.classList.contains("cl-sub-open");
      groups.forEach(function (o) { if (o !== g) setSub(o, false); });
      setSub(g, open);
    });
  });

  // close after choosing a link, on Escape, on outside tap, and when widening
  links.addEventListener("click", function (e) {
    if (e.target.closest("a")) setOpen(false);
  });
  document.addEventListener("keydown", function (e) {
    if (e.key === "Escape" && nav.classList.contains("cl-open")) {
      setOpen(false);
      toggle.focus();
    }
  });
  document.addEventListener("click", function (e) {
    if (nav.classList.contains("cl-open") && !nav.contains(e.target)) setOpen(false);
  });
  var onChange = function () { if (!mobile.matches) setOpen(false); };
  if (mobile.addEventListener) mobile.addEventListener("change", onChange);
  else mobile.addListener(onChange);
})();
