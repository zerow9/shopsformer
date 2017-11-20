/* jdf- jquery-1.6.4.js Date:2014-03-20 17:05:52 */
!function (a, b) {
    function k(a, c, d) {
        if (d === b && 1 === a.nodeType) {
            var e = "data-" + c.replace(j, "-$1").toLowerCase();
            if (d = a.getAttribute(e), "string" == typeof d) {
                try {
                    d = "true" === d ? !0 : "false" === d ? !1 : "null" === d ? null : f.isNaN(d) ? i.test(d) ? f.parseJSON(d) : d : parseFloat(d)
                } catch (g) {
                }
                f.data(a, c, d)
            } else d = b
        }
        return d
    }

    function l(a) {
        for (var b in a) if ("toJSON" !== b) return !1;
        return !0
    }

    function m(a, c, d) {
        var e = c + "defer", g = c + "queue", h = c + "mark", i = f.data(a, e, b, !0);
        !i || "queue" !== d && f.data(a, g, b, !0) || "mark" !== d && f.data(a, h, b, !0) || setTimeout(function () {
            f.data(a, g, b, !0) || f.data(a, h, b, !0) || (f.removeData(a, e, !0), i.resolve())
        }, 0)
    }

    function C() {
        return !1
    }

    function D() {
        return !0
    }

    function J(a, c, d) {
        var e = f.extend({}, d[0]);
        e.type = a, e.originalEvent = {}, e.liveFired = b, f.event.handle.call(c, e), e.isDefaultPrevented() && d[0].preventDefault()
    }

    function L(a) {
        var b, c, d, e, g, h, i, j, k, m, n, o, p = [], q = [], r = f._data(this, "events");
        if (a.liveFired !== this && r && r.live && !a.target.disabled && (!a.button || "click" !== a.type)) {
            a.namespace && (n = new RegExp("(^|\\.)" + a.namespace.split(".").join("\\.(?:.*\\.)?") + "(\\.|$)")), a.liveFired = this;
            var s = r.live.slice(0);
            for (i = 0; i < s.length; i++) g = s[i], g.origType.replace(w, "") === a.type ? q.push(g.selector) : s.splice(i--, 1);
            for (e = f(a.target).closest(q, a.currentTarget), j = 0, k = e.length; k > j; j++) for (m = e[j], i = 0; i < s.length; i++) g = s[i], m.selector !== g.selector || n && !n.test(g.namespace) || m.elem.disabled || (h = m.elem, d = null, ("mouseenter" === g.preType || "mouseleave" === g.preType) && (a.type = g.preType, d = f(a.relatedTarget).closest(g.selector)[0], d && f.contains(h, d) && (d = h)), d && d === h || p.push({
                "elem": h,
                "handleObj": g,
                "level": m.level
            }));
            for (j = 0, k = p.length; k > j && (e = p[j], !(c && e.level > c)) && (a.currentTarget = e.elem, a.data = e.handleObj.data, a.handleObj = e.handleObj, o = e.handleObj.origHandler.apply(e.elem, arguments), o !== !1 && !a.isPropagationStopped() || (c = e.level, o === !1 && (b = !1), !a.isImmediatePropagationStopped())); j++) ;
            return b
        }
    }

    function M(a, b) {
        return (a && "*" !== a ? a + "." : "") + b.replace(y, "`").replace(z, "&")
    }

    function U(a) {
        return !a || !a.parentNode || 11 === a.parentNode.nodeType
    }

    function V(a, b, c) {
        if (b = b || 0, f.isFunction(b)) return f.grep(a, function (a, d) {
            var e = !!b.call(a, d, a);
            return e === c
        });
        if (b.nodeType) return f.grep(a, function (a) {
            return a === b === c
        });
        if ("string" == typeof b) {
            var d = f.grep(a, function (a) {
                return 1 === a.nodeType
            });
            if (Q.test(b)) return f.filter(b, d, !c);
            b = f.filter(b, d)
        }
        return f.grep(a, function (a) {
            return f.inArray(a, b) >= 0 === c
        })
    }

    function fb(a) {
        return f.nodeName(a, "table") ? a.getElementsByTagName("tbody")[0] || a.appendChild(a.ownerDocument.createElement("tbody")) : a
    }

    function gb(a, b) {
        if (1 === b.nodeType && f.hasData(a)) {
            var c = f.expando, d = f.data(a), e = f.data(b, d);
            if (d = d[c]) {
                var g = d.events;
                if (e = e[c] = f.extend({}, d), g) {
                    delete e.handle, e.events = {};
                    for (var h in g) for (var i = 0, j = g[h].length; j > i; i++) f.event.add(b, h + (g[h][i].namespace ? "." : "") + g[h][i].namespace, g[h][i], g[h][i].data)
                }
            }
        }
    }

    function hb(a, b) {
        var c;
        1 === b.nodeType && (b.clearAttributes && b.clearAttributes(), b.mergeAttributes && b.mergeAttributes(a), c = b.nodeName.toLowerCase(), "object" === c ? b.outerHTML = a.outerHTML : "input" !== c || "checkbox" !== a.type && "radio" !== a.type ? "option" === c ? b.selected = a.defaultSelected : ("input" === c || "textarea" === c) && (b.defaultValue = a.defaultValue) : (a.checked && (b.defaultChecked = b.checked = a.checked), b.value !== a.value && (b.value = a.value)), b.removeAttribute(f.expando))
    }

    function ib(a) {
        return "getElementsByTagName" in a ? a.getElementsByTagName("*") : "querySelectorAll" in a ? a.querySelectorAll("*") : []
    }

    function jb(a) {
        ("checkbox" === a.type || "radio" === a.type) && (a.defaultChecked = a.checked)
    }

    function kb(a) {
        f.nodeName(a, "input") ? jb(a) : "getElementsByTagName" in a && f.grep(a.getElementsByTagName("input"), jb)
    }

    function lb(a, b) {
        b.src ? f.ajax({
            "url": b.src,
            "async": !1,
            "dataType": "script"
        }) : f.globalEval((b.text || b.textContent || b.innerHTML || "").replace(db, "/*$0*/")), b.parentNode && b.parentNode.removeChild(b)
    }

    function yb(a, b, c) {
        var d = "width" === b ? a.offsetWidth : a.offsetHeight, e = "width" === b ? tb : ub;
        return d > 0 ? ("border" !== c && f.each(e, function () {
            c || (d -= parseFloat(f.css(a, "padding" + this)) || 0), "margin" === c ? d += parseFloat(f.css(a, c + this)) || 0 : d -= parseFloat(f.css(a, "border" + this + "Width")) || 0
        }), d + "px") : (d = vb(a, b, b), (0 > d || null == d) && (d = a.style[b] || 0), d = parseFloat(d) || 0, c && f.each(e, function () {
            d += parseFloat(f.css(a, "padding" + this)) || 0, "padding" !== c && (d += parseFloat(f.css(a, "border" + this + "Width")) || 0), "margin" === c && (d += parseFloat(f.css(a, c + this)) || 0)
        }), d + "px")
    }

    function Vb(a) {
        return function (b, c) {
            if ("string" != typeof b && (c = b, b = "*"), f.isFunction(c)) for (var h, i, j, d = b.toLowerCase().split(Lb), e = 0, g = d.length; g > e; e++) h = d[e], j = /^\+/.test(h), j && (h = h.substr(1) || "*"), i = a[h] = a[h] || [], i[j ? "unshift" : "push"](c)
        }
    }

    function Wb(a, c, d, e, f, g) {
        f = f || c.dataTypes[0], g = g || {}, g[f] = !0;
        for (var l, h = a[f], i = 0, j = h ? h.length : 0, k = a === Pb; j > i && (k || !l); i++) l = h[i](c, d, e), "string" == typeof l && (!k || g[l] ? l = b : (c.dataTypes.unshift(l), l = Wb(a, c, d, e, l, g)));
        return !k && l || g["*"] || (l = Wb(a, c, d, e, "*", g)), l
    }

    function Xb(a, c) {
        var d, e, g = f.ajaxSettings.flatOptions || {};
        for (d in c) c[d] !== b && ((g[d] ? a : e || (e = {}))[d] = c[d]);
        e && f.extend(!0, a, e)
    }

    function Yb(a, b, c, d) {
        if (f.isArray(b)) f.each(b, function (b, e) {
            c || Ab.test(a) ? d(a, e) : Yb(a + "[" + ("object" == typeof e || f.isArray(e) ? b : "") + "]", e, c, d)
        }); else if (c || null == b || "object" != typeof b) d(a, b); else for (var e in b) Yb(a + "[" + e + "]", b[e], c, d)
    }

    function Zb(a, c, d) {
        var h, i, j, k, e = a.contents, f = a.dataTypes, g = a.responseFields;
        for (i in g) i in d && (c[g[i]] = d[i]);
        for (; "*" === f[0];) f.shift(), h === b && (h = a.mimeType || c.getResponseHeader("content-type"));
        if (h) for (i in e) if (e[i] && e[i].test(h)) {
            f.unshift(i);
            break
        }
        if (f[0] in d) j = f[0]; else {
            for (i in d) {
                if (!f[0] || a.converters[i + " " + f[0]]) {
                    j = i;
                    break
                }
                k || (k = i)
            }
            j = j || k
        }
        return j ? (j !== f[0] && f.unshift(j), d[j]) : void 0
    }

    function $b(a, c) {
        a.dataFilter && (c = a.dataFilter(c, a.dataType));
        var g, h, j, l, m, n, o, p, d = a.dataTypes, e = {}, i = d.length, k = d[0];
        for (g = 1; i > g; g++) {
            if (1 === g) for (h in a.converters) "string" == typeof h && (e[h.toLowerCase()] = a.converters[h]);
            if (l = k, k = d[g], "*" === k) k = l; else if ("*" !== l && l !== k) {
                if (m = l + " " + k, n = e[m] || e["* " + k], !n) {
                    p = b;
                    for (o in e) if (j = o.split(" "), (j[0] === l || "*" === j[0]) && (p = e[j[1] + " " + k])) {
                        o = e[o], o === !0 ? n = p : p === !0 && (n = o);
                        break
                    }
                }
                n || p || f.error("No conversion from " + m.replace(" ", " to ")), n !== !0 && (c = n ? n(c) : p(o(c)))
            }
        }
        return c
    }

    function ec() {
        try {
            return new a.XMLHttpRequest
        } catch (b) {
        }
    }

    function fc() {
        try {
            return new a.ActiveXObject("Microsoft.XMLHTTP")
        } catch (b) {
        }
    }

    function oc() {
        return setTimeout(pc, 0), nc = f.now()
    }

    function pc() {
        nc = b
    }

    function qc(a, b) {
        var c = {};
        return f.each(mc.concat.apply([], mc.slice(0, b)), function () {
            c[this] = a
        }), c
    }

    function rc(a) {
        if (!gc[a]) {
            var b = c.body, d = f("<" + a + ">").appendTo(b), e = d.css("display");
            d.remove(), ("none" === e || "" === e) && (hc || (hc = c.createElement("iframe"), hc.frameBorder = hc.width = hc.height = 0), b.appendChild(hc), ic && hc.createElement || (ic = (hc.contentWindow || hc.contentDocument).document, ic.write(("CSS1Compat" === c.compatMode ? "<!doctype html>" : "") + "<html><body>"), ic.close()), d = ic.createElement(a), ic.body.appendChild(d), e = f.css(d, "display"), b.removeChild(hc)), gc[a] = e
        }
        return gc[a]
    }

    function uc(a) {
        return f.isWindow(a) ? a : 9 === a.nodeType ? a.defaultView || a.parentWindow : !1
    }

    var c = a.document, d = a.navigator, e = a.location, f = function () {
        function K() {
            if (!e.isReady) {
                try {
                    c.documentElement.doScroll("left")
                } catch (a) {
                    return void setTimeout(K, 1)
                }
                e.ready()
            }
        }

        var h, A, B, C, e = function (a, b) {
                return new e.fn.init(a, b, h)
            }, f = a.jQuery, g = a.$, i = /^(?:[^#<]*(<[\w\W]+>)[^>]*$|#([\w\-]*)$)/, j = /\S/, k = /^\s+/, l = /\s+$/,
            m = /\d/, n = /^<(\w+)\s*\/?>(?:<\/\1>)?$/, o = /^[\],:{}\s]*$/, p = /\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g,
            q = /"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g, r = /(?:^|:|,)(?:\s*\[)+/g,
            s = /(webkit)[ \/]([\w.]+)/, t = /(opera)(?:.*version)?[ \/]([\w.]+)/, u = /(msie) ([\w.]+)/,
            v = /(mozilla)(?:.*? rv:([\w.]+))?/, w = /-([a-z]|[0-9])/gi, x = /^-ms-/, y = function (a, b) {
                return (b + "").toUpperCase()
            }, z = d.userAgent, D = Object.prototype.toString, E = Object.prototype.hasOwnProperty,
            F = Array.prototype.push, G = Array.prototype.slice, H = String.prototype.trim, I = Array.prototype.indexOf,
            J = {};
        return e.fn = e.prototype = {
            "constructor": e, "init": function (a, d, f) {
                var g, h, j, k;
                if (!a) return this;
                if (a.nodeType) return this.context = this[0] = a, this.length = 1, this;
                if ("body" === a && !d && c.body) return this.context = c, this[0] = c.body, this.selector = a, this.length = 1, this;
                if ("string" == typeof a) {
                    if (g = "<" === a.charAt(0) && ">" === a.charAt(a.length - 1) && a.length >= 3 ? [null, a, null] : i.exec(a), !g || !g[1] && d) return !d || d.jquery ? (d || f).find(a) : this.constructor(d).find(a);
                    if (g[1]) return d = d instanceof e ? d[0] : d, k = d ? d.ownerDocument || d : c, j = n.exec(a), j ? e.isPlainObject(d) ? (a = [c.createElement(j[1])], e.fn.attr.call(a, d, !0)) : a = [k.createElement(j[1])] : (j = e.buildFragment([g[1]], [k]), a = (j.cacheable ? e.clone(j.fragment) : j.fragment).childNodes), e.merge(this, a);
                    if (h = c.getElementById(g[2]), h && h.parentNode) {
                        if (h.id !== g[2]) return f.find(a);
                        this.length = 1, this[0] = h
                    }
                    return this.context = c, this.selector = a, this
                }
                return e.isFunction(a) ? f.ready(a) : (a.selector !== b && (this.selector = a.selector, this.context = a.context), e.makeArray(a, this))
            }, "selector": "", "jquery": "1.6.4", "length": 0, "size": function () {
                return this.length
            }, "toArray": function () {
                return G.call(this, 0)
            }, "get": function (a) {
                return null == a ? this.toArray() : 0 > a ? this[this.length + a] : this[a]
            }, "pushStack": function (a, b, c) {
                var d = this.constructor();
                return e.isArray(a) ? F.apply(d, a) : e.merge(d, a), d.prevObject = this, d.context = this.context, "find" === b ? d.selector = this.selector + (this.selector ? " " : "") + c : b && (d.selector = this.selector + "." + b + "(" + c + ")"), d
            }, "each": function (a, b) {
                return e.each(this, a, b)
            }, "ready": function (a) {
                return e.bindReady(), B.done(a), this
            }, "eq": function (a) {
                return -1 === a ? this.slice(a) : this.slice(a, +a + 1)
            }, "first": function () {
                return this.eq(0)
            }, "last": function () {
                return this.eq(-1)
            }, "slice": function () {
                return this.pushStack(G.apply(this, arguments), "slice", G.call(arguments).join(","))
            }, "map": function (a) {
                return this.pushStack(e.map(this, function (b, c) {
                    return a.call(b, c, b)
                }))
            }, "end": function () {
                return this.prevObject || this.constructor(null)
            }, "push": F, "sort": [].sort, "splice": [].splice
        }, e.fn.init.prototype = e.fn, e.extend = e.fn.extend = function () {
            var a, c, d, f, g, h, i = arguments[0] || {}, j = 1, k = arguments.length, l = !1;
            for ("boolean" == typeof i && (l = i, i = arguments[1] || {}, j = 2), "object" == typeof i || e.isFunction(i) || (i = {}), k === j && (i = this, --j); k > j; j++) if (null != (a = arguments[j])) for (c in a) d = i[c], f = a[c], i !== f && (l && f && (e.isPlainObject(f) || (g = e.isArray(f))) ? (g ? (g = !1, h = d && e.isArray(d) ? d : []) : h = d && e.isPlainObject(d) ? d : {}, i[c] = e.extend(l, h, f)) : f !== b && (i[c] = f));
            return i
        }, e.extend({
            "noConflict": function (b) {
                return a.$ === e && (a.$ = g), b && a.jQuery === e && (a.jQuery = f), e
            }, "isReady": !1, "readyWait": 1, "holdReady": function (a) {
                a ? e.readyWait++ : e.ready(!0)
            }, "ready": function (a) {
                if (a === !0 && !--e.readyWait || a !== !0 && !e.isReady) {
                    if (!c.body) return setTimeout(e.ready, 1);
                    if (e.isReady = !0, a !== !0 && --e.readyWait > 0) return;
                    B.resolveWith(c, [e]), e.fn.trigger && e(c).trigger("ready").unbind("ready")
                }
            }, "bindReady": function () {
                if (!B) {
                    if (B = e._Deferred(), "complete" === c.readyState) return setTimeout(e.ready, 1);
                    if (c.addEventListener) c.addEventListener("DOMContentLoaded", C, !1), a.addEventListener("load", e.ready, !1); else if (c.attachEvent) {
                        c.attachEvent("onreadystatechange", C), a.attachEvent("onload", e.ready);
                        var b = !1;
                        try {
                            b = null == a.frameElement
                        } catch (d) {
                        }
                        c.documentElement.doScroll && b && K()
                    }
                }
            }, "isFunction": function (a) {
                return "function" === e.type(a)
            }, "isArray": Array.isArray || function (a) {
                return "array" === e.type(a)
            }, "isWindow": function (a) {
                return a && "object" == typeof a && "setInterval" in a
            }, "isNaN": function (a) {
                return null == a || !m.test(a) || isNaN(a)
            }, "type": function (a) {
                return null == a ? String(a) : J[D.call(a)] || "object"
            }, "isPlainObject": function (a) {
                if (!a || "object" !== e.type(a) || a.nodeType || e.isWindow(a)) return !1;
                try {
                    if (a.constructor && !E.call(a, "constructor") && !E.call(a.constructor.prototype, "isPrototypeOf")) return !1
                } catch (c) {
                    return !1
                }
                var d;
                for (d in a) ;
                return d === b || E.call(a, d)
            }, "isEmptyObject": function (a) {
                for (var b in a) return !1;
                return !0
            }, "error": function (a) {
                throw a
            }, "parseJSON": function (b) {
                return "string" == typeof b && b ? (b = e.trim(b), a.JSON && a.JSON.parse ? a.JSON.parse(b) : o.test(b.replace(p, "@").replace(q, "]").replace(r, "")) ? new Function("return " + b)() : void e.error("Invalid JSON: " + b)) : null
            }, "parseXML": function (c) {
                var d, f;
                try {
                    a.DOMParser ? (f = new DOMParser, d = f.parseFromString(c, "text/xml")) : (d = new ActiveXObject("Microsoft.XMLDOM"), d.async = "false", d.loadXML(c))
                } catch (g) {
                    d = b
                }
                return d && d.documentElement && !d.getElementsByTagName("parsererror").length || e.error("Invalid XML: " + c), d
            }, "noop": function () {
            }, "globalEval": function (b) {
                b && j.test(b) && (a.execScript || function (b) {
                    a.eval.call(a, b)
                })(b)
            }, "camelCase": function (a) {
                return a.replace(x, "ms-").replace(w, y)
            }, "nodeName": function (a, b) {
                return a.nodeName && a.nodeName.toUpperCase() === b.toUpperCase()
            }, "each": function (a, c, d) {
                var f, g = 0, h = a.length, i = h === b || e.isFunction(a);
                if (d) if (i) {
                    for (f in a) if (c.apply(a[f], d) === !1) break
                } else for (; h > g && c.apply(a[g++], d) !== !1;) ; else if (i) {
                    for (f in a) if (c.call(a[f], f, a[f]) === !1) break
                } else for (; h > g && c.call(a[g], g, a[g++]) !== !1;) ;
                return a
            }, "trim": H ? function (a) {
                return null == a ? "" : H.call(a)
            } : function (a) {
                return null == a ? "" : a.toString().replace(k, "").replace(l, "")
            }, "makeArray": function (a, b) {
                var c = b || [];
                if (null != a) {
                    var d = e.type(a);
                    null == a.length || "string" === d || "function" === d || "regexp" === d || e.isWindow(a) ? F.call(c, a) : e.merge(c, a)
                }
                return c
            }, "inArray": function (a, b) {
                if (!b) return -1;
                if (I) return I.call(b, a);
                for (var c = 0, d = b.length; d > c; c++) if (b[c] === a) return c;
                return -1
            }, "merge": function (a, c) {
                var d = a.length, e = 0;
                if ("number" == typeof c.length) for (var f = c.length; f > e; e++) a[d++] = c[e]; else for (; c[e] !== b;) a[d++] = c[e++];
                return a.length = d, a
            }, "grep": function (a, b, c) {
                var e, d = [];
                c = !!c;
                for (var f = 0, g = a.length; g > f; f++) e = !!b(a[f], f), c !== e && d.push(a[f]);
                return d
            }, "map": function (a, c, d) {
                var f, g, h = [], i = 0, j = a.length,
                    k = a instanceof e || j !== b && "number" == typeof j && (j > 0 && a[0] && a[j - 1] || 0 === j || e.isArray(a));
                if (k) for (; j > i; i++) f = c(a[i], i, d), null != f && (h[h.length] = f); else for (g in a) f = c(a[g], g, d), null != f && (h[h.length] = f);
                return h.concat.apply([], h)
            }, "guid": 1, "proxy": function (a, c) {
                if ("string" == typeof c) {
                    var d = a[c];
                    c = a, a = d
                }
                if (!e.isFunction(a)) return b;
                var f = G.call(arguments, 2), g = function () {
                    return a.apply(c, f.concat(G.call(arguments)))
                };
                return g.guid = a.guid = a.guid || g.guid || e.guid++, g
            }, "access": function (a, c, d, f, g, h) {
                var i = a.length;
                if ("object" == typeof c) {
                    for (var j in c) e.access(a, j, c[j], f, g, d);
                    return a
                }
                if (d !== b) {
                    f = !h && f && e.isFunction(d);
                    for (var k = 0; i > k; k++) g(a[k], c, f ? d.call(a[k], k, g(a[k], c)) : d, h);
                    return a
                }
                return i ? g(a[0], c) : b
            }, "now": function () {
                return (new Date).getTime()
            }, "uaMatch": function (a) {
                a = a.toLowerCase();
                var b = s.exec(a) || t.exec(a) || u.exec(a) || a.indexOf("compatible") < 0 && v.exec(a) || [];
                return {"browser": b[1] || "", "version": b[2] || "0"}
            }, "sub": function () {
                function a(b, c) {
                    return new a.fn.init(b, c)
                }

                e.extend(!0, a, this), a.superclass = this, a.fn = a.prototype = this(), a.fn.constructor = a, a.sub = this.sub, a.fn.init = function (c, d) {
                    return d && d instanceof e && !(d instanceof a) && (d = a(d)), e.fn.init.call(this, c, d, b)
                }, a.fn.init.prototype = a.fn;
                var b = a(c);
                return a
            }, "browser": {}
        }), e.each("Boolean Number String Function Array Date RegExp Object".split(" "), function (a, b) {
            J["[object " + b + "]"] = b.toLowerCase()
        }), A = e.uaMatch(z), A.browser && (e.browser[A.browser] = !0, e.browser.version = A.version), e.browser.webkit && (e.browser.safari = !0), j.test("\xa0") && (k = /^[\s\xA0]+/, l = /[\s\xA0]+$/), h = e(c), c.addEventListener ? C = function () {
            c.removeEventListener("DOMContentLoaded", C, !1), e.ready()
        } : c.attachEvent && (C = function () {
            "complete" === c.readyState && (c.detachEvent("onreadystatechange", C), e.ready())
        }), e
    }(), g = "done fail isResolved isRejected promise then always pipe".split(" "), h = [].slice;
    f.extend({
        "_Deferred": function () {
            var b, c, d, a = [], e = {
                "done": function () {
                    if (!d) {
                        var g, h, i, j, k, c = arguments;
                        for (b && (k = b, b = 0), g = 0, h = c.length; h > g; g++) i = c[g], j = f.type(i), "array" === j ? e.done.apply(e, i) : "function" === j && a.push(i);
                        k && e.resolveWith(k[0], k[1])
                    }
                    return this
                }, "resolveWith": function (e, f) {
                    if (!d && !b && !c) {
                        f = f || [], c = 1;
                        try {
                            for (; a[0];) a.shift().apply(e, f)
                        } finally {
                            b = [e, f], c = 0
                        }
                    }
                    return this
                }, "resolve": function () {
                    return e.resolveWith(this, arguments), this
                }, "isResolved": function () {
                    return !(!c && !b)
                }, "cancel": function () {
                    return d = 1, a = [], this
                }
            };
            return e
        }, "Deferred": function (a) {
            var d, b = f._Deferred(), c = f._Deferred();
            return f.extend(b, {
                "then": function (a, c) {
                    return b.done(a).fail(c), this
                },
                "always": function () {
                    return b.done.apply(b, arguments).fail.apply(this, arguments)
                },
                "fail": c.done,
                "rejectWith": c.resolveWith,
                "reject": c.resolve,
                "isRejected": c.isResolved,
                "pipe": function (a, c) {
                    return f.Deferred(function (d) {
                        f.each({"done": [a, "resolve"], "fail": [c, "reject"]}, function (a, c) {
                            var h, e = c[0], g = c[1];
                            b[a](f.isFunction(e) ? function () {
                                h = e.apply(this, arguments), h && f.isFunction(h.promise) ? h.promise().then(d.resolve, d.reject) : d[g + "With"](this === b ? d : this, [h])
                            } : d[g])
                        })
                    }).promise()
                },
                "promise": function (a) {
                    if (null == a) {
                        if (d) return d;
                        d = a = {}
                    }
                    for (var c = g.length; c--;) a[g[c]] = b[g[c]];
                    return a
                }
            }), b.done(c.cancel).fail(b.cancel), delete b.cancel, a && a.call(b, b), b
        }, "when": function (a) {
            function i(a) {
                return function (c) {
                    b[a] = arguments.length > 1 ? h.call(arguments, 0) : c, --e || g.resolveWith(g, h.call(b, 0))
                }
            }

            var b = arguments, c = 0, d = b.length, e = d,
                g = 1 >= d && a && f.isFunction(a.promise) ? a : f.Deferred();
            if (d > 1) {
                for (; d > c; c++) b[c] && f.isFunction(b[c].promise) ? b[c].promise().then(i(c), g.reject) : --e;
                e || g.resolveWith(g, b)
            } else g !== a && g.resolveWith(g, d ? [a] : []);
            return g.promise()
        }
    }), f.support = function () {
        var d, e, g, h, i, j, k, l, m, n, o, p, q, s, t, u, a = c.createElement("div"), b = c.documentElement;
        if (a.setAttribute("className", "t"), a.innerHTML = "   <link/><table></table><a href='/a' style='top:1px;float:left;opacity:.55;'>a</a><input type='checkbox'/>", d = a.getElementsByTagName("*"), e = a.getElementsByTagName("a")[0], !d || !d.length || !e) return {};
        g = c.createElement("select"), h = g.appendChild(c.createElement("option")), i = a.getElementsByTagName("input")[0], k = {
            "leadingWhitespace": 3 === a.firstChild.nodeType,
            "tbody": !a.getElementsByTagName("tbody").length,
            "htmlSerialize": !!a.getElementsByTagName("link").length,
            "style": /top/.test(e.getAttribute("style")),
            "hrefNormalized": "/a" === e.getAttribute("href"),
            "opacity": /^0.55$/.test(e.style.opacity),
            "cssFloat": !!e.style.cssFloat,
            "checkOn": "on" === i.value,
            "optSelected": h.selected,
            "getSetAttribute": "t" !== a.className,
            "submitBubbles": !0,
            "changeBubbles": !0,
            "focusinBubbles": !1,
            "deleteExpando": !0,
            "noCloneEvent": !0,
            "inlineBlockNeedsLayout": !1,
            "shrinkWrapBlocks": !1,
            "reliableMarginRight": !0
        }, i.checked = !0, k.noCloneChecked = i.cloneNode(!0).checked, g.disabled = !0, k.optDisabled = !h.disabled;
        try {
            delete a.test
        } catch (v) {
            k.deleteExpando = !1
        }
        !a.addEventListener && a.attachEvent && a.fireEvent && (a.attachEvent("onclick", function () {
            k.noCloneEvent = !1
        }), a.cloneNode(!0).fireEvent("onclick")), i = c.createElement("input"), i.value = "t", i.setAttribute("type", "radio"), k.radioValue = "t" === i.value, i.setAttribute("checked", "checked"), a.appendChild(i), l = c.createDocumentFragment(), l.appendChild(a.firstChild), k.checkClone = l.cloneNode(!0).cloneNode(!0).lastChild.checked, a.innerHTML = "", a.style.width = a.style.paddingLeft = "1px", m = c.getElementsByTagName("body")[0], o = c.createElement(m ? "div" : "body"), p = {
            "visibility": "hidden",
            "width": 0,
            "height": 0,
            "border": 0,
            "margin": 0,
            "background": "none"
        }, m && f.extend(p, {"position": "absolute", "left": "-1000px", "top": "-1000px"});
        for (t in p) o.style[t] = p[t];
        if (o.appendChild(a), n = m || b, n.insertBefore(o, n.firstChild), k.appendChecked = i.checked, k.boxModel = 2 === a.offsetWidth, "zoom" in a.style && (a.style.display = "inline", a.style.zoom = 1, k.inlineBlockNeedsLayout = 2 === a.offsetWidth, a.style.display = "", a.innerHTML = "<div style='width:4px;'></div>", k.shrinkWrapBlocks = 2 !== a.offsetWidth), a.innerHTML = "<table><tr><td style='padding:0;border:0;display:none'></td><td>t</td></tr></table>", q = a.getElementsByTagName("td"), u = 0 === q[0].offsetHeight, q[0].style.display = "", q[1].style.display = "none", k.reliableHiddenOffsets = u && 0 === q[0].offsetHeight, a.innerHTML = "", c.defaultView && c.defaultView.getComputedStyle && (j = c.createElement("div"), j.style.width = "0", j.style.marginRight = "0", a.appendChild(j), k.reliableMarginRight = 0 === (parseInt((c.defaultView.getComputedStyle(j, null) || {"marginRight": 0}).marginRight, 10) || 0)), o.innerHTML = "", n.removeChild(o), a.attachEvent) for (t in{
            "submit": 1,
            "change": 1,
            "focusin": 1
        }) s = "on" + t, u = s in a, u || (a.setAttribute(s, "return;"), u = "function" == typeof a[s]), k[t + "Bubbles"] = u;
        return o = l = g = h = m = j = a = i = null, k
    }(), f.boxModel = f.support.boxModel;
    var i = /^(?:\{.*\}|\[.*\])$/, j = /([A-Z])/g;
    f.extend({
        "cache": {},
        "uuid": 0,
        "expando": "jQuery" + (f.fn.jquery + Math.random()).replace(/\D/g, ""),
        "noData": {"embed": !0, "object": "clsid:D27CDB6E-AE6D-11cf-96B8-444553540000", "applet": !0},
        "hasData": function (a) {
            return a = a.nodeType ? f.cache[a[f.expando]] : a[f.expando], !!a && !l(a)
        },
        "data": function (a, c, d, e) {
            if (f.acceptData(a)) {
                var g, h, i = f.expando, j = "string" == typeof c, k = a.nodeType, l = k ? f.cache : a,
                    m = k ? a[f.expando] : a[f.expando] && f.expando;
                if (!(!m || e && m && l[m] && !l[m][i]) || !j || d !== b) return m || (k ? a[f.expando] = m = ++f.uuid : m = f.expando), l[m] || (l[m] = {}, k || (l[m].toJSON = f.noop)), ("object" == typeof c || "function" == typeof c) && (e ? l[m][i] = f.extend(l[m][i], c) : l[m] = f.extend(l[m], c)), g = l[m], e && (g[i] || (g[i] = {}), g = g[i]), d !== b && (g[f.camelCase(c)] = d), "events" !== c || g[c] ? (j ? (h = g[c], null == h && (h = g[f.camelCase(c)])) : h = g, h) : g[i] && g[i].events
            }
        },
        "removeData": function (a, b, c) {
            if (f.acceptData(a)) {
                var d, e = f.expando, g = a.nodeType, h = g ? f.cache : a, i = g ? a[f.expando] : f.expando;
                if (h[i] && !(b && (d = c ? h[i][e] : h[i], d && (d[b] || (b = f.camelCase(b)), delete d[b], !l(d))) || c && (delete h[i][e], !l(h[i])))) {
                    var j = h[i][e];
                    f.support.deleteExpando || !h.setInterval ? delete h[i] : h[i] = null, j ? (h[i] = {}, g || (h[i].toJSON = f.noop), h[i][e] = j) : g && (f.support.deleteExpando ? delete a[f.expando] : a.removeAttribute ? a.removeAttribute(f.expando) : a[f.expando] = null)
                }
            }
        },
        "_data": function (a, b, c) {
            return f.data(a, b, c, !0)
        },
        "acceptData": function (a) {
            if (a.nodeName) {
                var b = f.noData[a.nodeName.toLowerCase()];
                if (b) return !(b === !0 || a.getAttribute("classid") !== b)
            }
            return !0
        }
    }), f.fn.extend({
        "data": function (a, c) {
            var d = null;
            if ("undefined" == typeof a) {
                if (this.length && (d = f.data(this[0]), 1 === this[0].nodeType)) for (var g, e = this[0].attributes, h = 0, i = e.length; i > h; h++) g = e[h].name, 0 === g.indexOf("data-") && (g = f.camelCase(g.substring(5)), k(this[0], g, d[g]));
                return d
            }
            if ("object" == typeof a) return this.each(function () {
                f.data(this, a)
            });
            var j = a.split(".");
            return j[1] = j[1] ? "." + j[1] : "", c === b ? (d = this.triggerHandler("getData" + j[1] + "!", [j[0]]), d === b && this.length && (d = f.data(this[0], a), d = k(this[0], a, d)), d === b && j[1] ? this.data(j[0]) : d) : this.each(function () {
                var b = f(this), d = [j[0], c];
                b.triggerHandler("setData" + j[1] + "!", d), f.data(this, a, c), b.triggerHandler("changeData" + j[1] + "!", d)
            })
        }, "removeData": function (a) {
            return this.each(function () {
                f.removeData(this, a)
            })
        }
    }), f.extend({
        "_mark": function (a, c) {
            a && (c = (c || "fx") + "mark", f.data(a, c, (f.data(a, c, b, !0) || 0) + 1, !0))
        }, "_unmark": function (a, c, d) {
            if (a !== !0 && (d = c, c = a, a = !1), c) {
                d = d || "fx";
                var e = d + "mark", g = a ? 0 : (f.data(c, e, b, !0) || 1) - 1;
                g ? f.data(c, e, g, !0) : (f.removeData(c, e, !0), m(c, d, "mark"))
            }
        }, "queue": function (a, c, d) {
            if (a) {
                c = (c || "fx") + "queue";
                var e = f.data(a, c, b, !0);
                return d && (!e || f.isArray(d) ? e = f.data(a, c, f.makeArray(d), !0) : e.push(d)), e || []
            }
        }, "dequeue": function (a, b) {
            b = b || "fx";
            var c = f.queue(a, b), d = c.shift();
            "inprogress" === d && (d = c.shift()), d && ("fx" === b && c.unshift("inprogress"), d.call(a, function () {
                f.dequeue(a, b)
            })), c.length || (f.removeData(a, b + "queue", !0), m(a, b, "queue"))
        }
    }), f.fn.extend({
        "queue": function (a, c) {
            return "string" != typeof a && (c = a, a = "fx"), c === b ? f.queue(this[0], a) : this.each(function () {
                var b = f.queue(this, a, c);
                "fx" === a && "inprogress" !== b[0] && f.dequeue(this, a)
            })
        }, "dequeue": function (a) {
            return this.each(function () {
                f.dequeue(this, a)
            })
        }, "delay": function (a, b) {
            return a = f.fx ? f.fx.speeds[a] || a : a, b = b || "fx", this.queue(b, function () {
                var c = this;
                setTimeout(function () {
                    f.dequeue(c, b)
                }, a)
            })
        }, "clearQueue": function (a) {
            return this.queue(a || "fx", [])
        }, "promise": function (a, c) {
            function m() {
                --h || d.resolveWith(e, [e])
            }

            "string" != typeof a && (c = a, a = b), a = a || "fx";
            for (var l, d = f.Deferred(), e = this, g = e.length, h = 1, i = a + "defer", j = a + "queue", k = a + "mark"; g--;) (l = f.data(e[g], i, b, !0) || (f.data(e[g], j, b, !0) || f.data(e[g], k, b, !0)) && f.data(e[g], i, f._Deferred(), !0)) && (h++, l.done(m));
            return m(), d.promise()
        }
    });
    var u, v, n = /[\n\t\r]/g, o = /\s+/, p = /\r/g, q = /^(?:button|input)$/i,
        r = /^(?:button|input|object|select|textarea)$/i, s = /^a(?:rea)?$/i,
        t = /^(?:autofocus|autoplay|async|checked|controls|defer|disabled|hidden|loop|multiple|open|readonly|required|scoped|selected)$/i;
    f.fn.extend({
        "attr": function (a, b) {
            return f.access(this, a, b, !0, f.attr)
        }, "removeAttr": function (a) {
            return this.each(function () {
                f.removeAttr(this, a)
            })
        }, "prop": function (a, b) {
            return f.access(this, a, b, !0, f.prop)
        }, "removeProp": function (a) {
            return a = f.propFix[a] || a, this.each(function () {
                try {
                    this[a] = b, delete this[a]
                } catch (c) {
                }
            })
        }, "addClass": function (a) {
            var b, c, d, e, g, h, i;
            if (f.isFunction(a)) return this.each(function (b) {
                f(this).addClass(a.call(this, b, this.className))
            });
            if (a && "string" == typeof a) for (b = a.split(o), c = 0, d = this.length; d > c; c++) if (e = this[c], 1 === e.nodeType) if (e.className || 1 !== b.length) {
                for (g = " " + e.className + " ", h = 0, i = b.length; i > h; h++) ~g.indexOf(" " + b[h] + " ") || (g += b[h] + " ");
                e.className = f.trim(g)
            } else e.className = a;
            return this
        }, "removeClass": function (a) {
            var c, d, e, g, h, i, j;
            if (f.isFunction(a)) return this.each(function (b) {
                f(this).removeClass(a.call(this, b, this.className))
            });
            if (a && "string" == typeof a || a === b) for (c = (a || "").split(o), d = 0, e = this.length; e > d; d++) if (g = this[d], 1 === g.nodeType && g.className) if (a) {
                for (h = (" " + g.className + " ").replace(n, " "), i = 0, j = c.length; j > i; i++) h = h.replace(" " + c[i] + " ", " ");
                g.className = f.trim(h)
            } else g.className = "";
            return this
        }, "toggleClass": function (a, b) {
            var c = typeof a, d = "boolean" == typeof b;
            return this.each(f.isFunction(a) ? function (c) {
                f(this).toggleClass(a.call(this, c, this.className, b), b)
            } : function () {
                if ("string" === c) for (var e, g = 0, h = f(this), i = b, j = a.split(o); e = j[g++];) i = d ? i : !h.hasClass(e), h[i ? "addClass" : "removeClass"](e); else ("undefined" === c || "boolean" === c) && (this.className && f._data(this, "__className__", this.className), this.className = this.className || a === !1 ? "" : f._data(this, "__className__") || "")
            })
        }, "hasClass": function (a) {
            for (var b = " " + a + " ", c = 0, d = this.length; d > c; c++) if (1 === this[c].nodeType && (" " + this[c].className + " ").replace(n, " ").indexOf(b) > -1) return !0;
            return !1
        }, "val": function (a) {
            var c, d, e = this[0];
            if (!arguments.length) return e ? (c = f.valHooks[e.nodeName.toLowerCase()] || f.valHooks[e.type], c && "get" in c && (d = c.get(e, "value")) !== b ? d : (d = e.value, "string" == typeof d ? d.replace(p, "") : null == d ? "" : d)) : b;
            var g = f.isFunction(a);
            return this.each(function (d) {
                var h, e = f(this);
                1 === this.nodeType && (h = g ? a.call(this, d, e.val()) : a, null == h ? h = "" : "number" == typeof h ? h += "" : f.isArray(h) && (h = f.map(h, function (a) {
                    return null == a ? "" : a + ""
                })), c = f.valHooks[this.nodeName.toLowerCase()] || f.valHooks[this.type], c && "set" in c && c.set(this, h, "value") !== b || (this.value = h))
            })
        }
    }), f.extend({
        "valHooks": {
            "option": {
                "get": function (a) {
                    var b = a.attributes.value;
                    return !b || b.specified ? a.value : a.text
                }
            }, "select": {
                "get": function (a) {
                    var b, c = a.selectedIndex, d = [], e = a.options, g = "select-one" === a.type;
                    if (0 > c) return null;
                    for (var h = g ? c : 0, i = g ? c + 1 : e.length; i > h; h++) {
                        var j = e[h];
                        if (!(!j.selected || (f.support.optDisabled ? j.disabled : null !== j.getAttribute("disabled")) || j.parentNode.disabled && f.nodeName(j.parentNode, "optgroup"))) {
                            if (b = f(j).val(), g) return b;
                            d.push(b)
                        }
                    }
                    return g && !d.length && e.length ? f(e[c]).val() : d
                }, "set": function (a, b) {
                    var c = f.makeArray(b);
                    return f(a).find("option").each(function () {
                        this.selected = f.inArray(f(this).val(), c) >= 0
                    }), c.length || (a.selectedIndex = -1), c
                }
            }
        },
        "attrFn": {"val": !0, "css": !0, "html": !0, "text": !0, "data": !0, "width": !0, "height": !0, "offset": !0},
        "attrFix": {"tabindex": "tabIndex"},
        "attr": function (a, c, d, e) {
            var g = a.nodeType;
            if (!a || 3 === g || 8 === g || 2 === g) return b;
            if (e && c in f.attrFn) return f(a)[c](d);
            if (!("getAttribute" in a)) return f.prop(a, c, d);
            var h, i, j = 1 !== g || !f.isXMLDoc(a);
            return j && (c = f.attrFix[c] || c, i = f.attrHooks[c], i || (t.test(c) ? i = v : u && (i = u))), d !== b ? null === d ? (f.removeAttr(a, c), b) : i && "set" in i && j && (h = i.set(a, d, c)) !== b ? h : (a.setAttribute(c, "" + d), d) : i && "get" in i && j && null !== (h = i.get(a, c)) ? h : (h = a.getAttribute(c), null === h ? b : h)
        },
        "removeAttr": function (a, b) {
            var c;
            1 === a.nodeType && (b = f.attrFix[b] || b, f.attr(a, b, ""), a.removeAttribute(b), t.test(b) && (c = f.propFix[b] || b) in a && (a[c] = !1))
        },
        "attrHooks": {
            "type": {
                "set": function (a, b) {
                    if (q.test(a.nodeName) && a.parentNode) f.error("type property can't be changed"); else if (!f.support.radioValue && "radio" === b && f.nodeName(a, "input")) {
                        var c = a.value;
                        return a.setAttribute("type", b), c && (a.value = c), b
                    }
                }
            }, "value": {
                "get": function (a, b) {
                    return u && f.nodeName(a, "button") ? u.get(a, b) : b in a ? a.value : null
                }, "set": function (a, b, c) {
                    return u && f.nodeName(a, "button") ? u.set(a, b, c) : void(a.value = b)
                }
            }
        },
        "propFix": {
            "tabindex": "tabIndex",
            "readonly": "readOnly",
            "for": "htmlFor",
            "class": "className",
            "maxlength": "maxLength",
            "cellspacing": "cellSpacing",
            "cellpadding": "cellPadding",
            "rowspan": "rowSpan",
            "colspan": "colSpan",
            "usemap": "useMap",
            "frameborder": "frameBorder",
            "contenteditable": "contentEditable"
        },
        "prop": function (a, c, d) {
            var e = a.nodeType;
            if (!a || 3 === e || 8 === e || 2 === e) return b;
            var g, h, i = 1 !== e || !f.isXMLDoc(a);
            return i && (c = f.propFix[c] || c, h = f.propHooks[c]), d !== b ? h && "set" in h && (g = h.set(a, d, c)) !== b ? g : a[c] = d : h && "get" in h && null !== (g = h.get(a, c)) ? g : a[c]
        },
        "propHooks": {
            "tabIndex": {
                "get": function (a) {
                    var c = a.getAttributeNode("tabindex");
                    return c && c.specified ? parseInt(c.value, 10) : r.test(a.nodeName) || s.test(a.nodeName) && a.href ? 0 : b
                }
            }
        }
    }), f.attrHooks.tabIndex = f.propHooks.tabIndex, v = {
        "get": function (a, c) {
            var d;
            return f.prop(a, c) === !0 || (d = a.getAttributeNode(c)) && d.nodeValue !== !1 ? c.toLowerCase() : b
        }, "set": function (a, b, c) {
            var d;
            return b === !1 ? f.removeAttr(a, c) : (d = f.propFix[c] || c, d in a && (a[d] = !0), a.setAttribute(c, c.toLowerCase())), c
        }
    }, f.support.getSetAttribute || (u = f.valHooks.button = {
        "get": function (a, c) {
            var d;
            return d = a.getAttributeNode(c), d && "" !== d.nodeValue ? d.nodeValue : b
        }, "set": function (a, b, d) {
            var e = a.getAttributeNode(d);
            return e || (e = c.createAttribute(d), a.setAttributeNode(e)), e.nodeValue = b + ""
        }
    }, f.each(["width", "height"], function (a, b) {
        f.attrHooks[b] = f.extend(f.attrHooks[b], {
            "set": function (a, c) {
                return "" === c ? (a.setAttribute(b, "auto"), c) : void 0
            }
        })
    })), f.support.hrefNormalized || f.each(["href", "src", "width", "height"], function (a, c) {
        f.attrHooks[c] = f.extend(f.attrHooks[c], {
            "get": function (a) {
                var d = a.getAttribute(c, 2);
                return null === d ? b : d
            }
        })
    }), f.support.style || (f.attrHooks.style = {
        "get": function (a) {
            return a.style.cssText.toLowerCase() || b
        }, "set": function (a, b) {
            return a.style.cssText = "" + b
        }
    }), f.support.optSelected || (f.propHooks.selected = f.extend(f.propHooks.selected, {
        "get": function (a) {
            var b = a.parentNode;
            return b && (b.selectedIndex, b.parentNode && b.parentNode.selectedIndex), null
        }
    })), f.support.checkOn || f.each(["radio", "checkbox"], function () {
        f.valHooks[this] = {
            "get": function (a) {
                return null === a.getAttribute("value") ? "on" : a.value
            }
        }
    }), f.each(["radio", "checkbox"], function () {
        f.valHooks[this] = f.extend(f.valHooks[this], {
            "set": function (a, b) {
                return f.isArray(b) ? a.checked = f.inArray(f(a).val(), b) >= 0 : void 0
            }
        })
    });
    var w = /\.(.*)$/, x = /^(?:textarea|input|select)$/i, y = /\./g, z = / /g, A = /[^\w\s.|`]/g, B = function (a) {
        return a.replace(A, "\\$&")
    };
    f.event = {
        "add": function (a, c, d, e) {
            if (3 !== a.nodeType && 8 !== a.nodeType) {
                if (d === !1) d = C; else if (!d) return;
                var g, h;
                d.handler && (g = d, d = g.handler), d.guid || (d.guid = f.guid++);
                var i = f._data(a);
                if (i) {
                    var j = i.events, k = i.handle;
                    j || (i.events = j = {}), k || (i.handle = k = function (a) {
                        return "undefined" == typeof f || a && f.event.triggered === a.type ? b : f.event.handle.apply(k.elem, arguments)
                    }), k.elem = a, c = c.split(" ");
                    for (var l, n, m = 0; l = c[m++];) {
                        h = g ? f.extend({}, g) : {
                            "handler": d,
                            "data": e
                        }, l.indexOf(".") > -1 ? (n = l.split("."), l = n.shift(), h.namespace = n.slice(0).sort().join(".")) : (n = [], h.namespace = ""), h.type = l, h.guid || (h.guid = d.guid);
                        var o = j[l], p = f.event.special[l] || {};
                        o || (o = j[l] = [], p.setup && p.setup.call(a, e, n, k) !== !1 || (a.addEventListener ? a.addEventListener(l, k, !1) : a.attachEvent && a.attachEvent("on" + l, k))), p.add && (p.add.call(a, h), h.handler.guid || (h.handler.guid = d.guid)), o.push(h), f.event.global[l] = !0
                    }
                    a = null
                }
            }
        },
        "global": {},
        "remove": function (a, c, d, e) {
            if (3 !== a.nodeType && 8 !== a.nodeType) {
                d === !1 && (d = C);
                var g, h, j, l, m, n, o, p, q, r, k = 0, s = f.hasData(a) && f._data(a), t = s && s.events;
                if (s && t) if (c && c.type && (d = c.handler, c = c.type), !c || "string" == typeof c && "." === c.charAt(0)) {
                    c = c || "";
                    for (h in t) f.event.remove(a, h + c)
                } else {
                    for (c = c.split(" "); h = c[k++];) if (r = h, q = null, l = h.indexOf(".") < 0, m = [], l || (m = h.split("."), h = m.shift(), n = new RegExp("(^|\\.)" + f.map(m.slice(0).sort(), B).join("\\.(?:.*\\.)?") + "(\\.|$)")), p = t[h]) if (d) {
                        for (o = f.event.special[h] || {}, j = e || 0; j < p.length && (q = p[j], d.guid !== q.guid || ((l || n.test(q.namespace)) && (null == e && p.splice(j--, 1), o.remove && o.remove.call(a, q)), null == e)); j++) ;
                        (0 === p.length || null != e && 1 === p.length) && (o.teardown && o.teardown.call(a, m) !== !1 || f.removeEvent(a, h, s.handle), g = null, delete t[h])
                    } else for (j = 0; j < p.length; j++) q = p[j], (l || n.test(q.namespace)) && (f.event.remove(a, r, q.handler, j), p.splice(j--, 1));
                    if (f.isEmptyObject(t)) {
                        var u = s.handle;
                        u && (u.elem = null), delete s.events, delete s.handle, f.isEmptyObject(s) && f.removeData(a, b, !0)
                    }
                }
            }
        },
        "customEvent": {"getData": !0, "setData": !0, "changeData": !0},
        "trigger": function (c, d, e, g) {
            var j, h = c.type || c, i = [];
            if (h.indexOf("!") >= 0 && (h = h.slice(0, -1), j = !0), h.indexOf(".") >= 0 && (i = h.split("."), h = i.shift(), i.sort()), e && !f.event.customEvent[h] || f.event.global[h]) {
                if (c = "object" == typeof c ? c[f.expando] ? c : new f.Event(h, c) : new f.Event(h), c.type = h, c.exclusive = j, c.namespace = i.join("."), c.namespace_re = new RegExp("(^|\\.)" + i.join("\\.(?:.*\\.)?") + "(\\.|$)"), (g || !e) && (c.preventDefault(), c.stopPropagation()), !e) return void f.each(f.cache, function () {
                    var a = f.expando, b = this[a];
                    b && b.events && b.events[h] && f.event.trigger(c, d, b.handle.elem)
                });
                if (3 !== e.nodeType && 8 !== e.nodeType) {
                    c.result = b, c.target = e, d = null != d ? f.makeArray(d) : [], d.unshift(c);
                    var k = e, l = h.indexOf(":") < 0 ? "on" + h : "";
                    do {
                        var m = f._data(k, "handle");
                        c.currentTarget = k, m && m.apply(k, d), l && f.acceptData(k) && k[l] && k[l].apply(k, d) === !1 && (c.result = !1, c.preventDefault()), k = k.parentNode || k.ownerDocument || k === c.target.ownerDocument && a
                    } while (k && !c.isPropagationStopped());
                    if (!c.isDefaultPrevented()) {
                        var n, o = f.event.special[h] || {};
                        if (!(o._default && o._default.call(e.ownerDocument, c) !== !1 || "click" === h && f.nodeName(e, "a") || !f.acceptData(e))) {
                            try {
                                l && e[h] && (n = e[l], n && (e[l] = null), f.event.triggered = h, e[h]())
                            } catch (p) {
                            }
                            n && (e[l] = n), f.event.triggered = b
                        }
                    }
                    return c.result
                }
            }
        },
        "handle": function (c) {
            c = f.event.fix(c || a.event);
            var d = ((f._data(this, "events") || {})[c.type] || []).slice(0), e = !c.exclusive && !c.namespace,
                g = Array.prototype.slice.call(arguments, 0);
            g[0] = c, c.currentTarget = this;
            for (var h = 0, i = d.length; i > h; h++) {
                var j = d[h];
                if (e || c.namespace_re.test(j.namespace)) {
                    c.handler = j.handler, c.data = j.data, c.handleObj = j;
                    var k = j.handler.apply(this, g);
                    if (k !== b && (c.result = k, k === !1 && (c.preventDefault(), c.stopPropagation())), c.isImmediatePropagationStopped()) break
                }
            }
            return c.result
        },
        "props": "altKey attrChange attrName bubbles button cancelable charCode clientX clientY ctrlKey currentTarget data detail eventPhase fromElement handler keyCode layerX layerY metaKey newValue offsetX offsetY pageX pageY prevValue relatedNode relatedTarget screenX screenY shiftKey srcElement target toElement view wheelDelta which".split(" "),
        "fix": function (a) {
            if (a[f.expando]) return a;
            var d = a;
            a = f.Event(d);
            for (var g, e = this.props.length; e;) g = this.props[--e], a[g] = d[g];
            if (a.target || (a.target = a.srcElement || c), 3 === a.target.nodeType && (a.target = a.target.parentNode), !a.relatedTarget && a.fromElement && (a.relatedTarget = a.fromElement === a.target ? a.toElement : a.fromElement), null == a.pageX && null != a.clientX) {
                var h = a.target.ownerDocument || c, i = h.documentElement, j = h.body;
                a.pageX = a.clientX + (i && i.scrollLeft || j && j.scrollLeft || 0) - (i && i.clientLeft || j && j.clientLeft || 0), a.pageY = a.clientY + (i && i.scrollTop || j && j.scrollTop || 0) - (i && i.clientTop || j && j.clientTop || 0)
            }
            return null != a.which || null == a.charCode && null == a.keyCode || (a.which = null != a.charCode ? a.charCode : a.keyCode), !a.metaKey && a.ctrlKey && (a.metaKey = a.ctrlKey), a.which || a.button === b || (a.which = 1 & a.button ? 1 : 2 & a.button ? 3 : 4 & a.button ? 2 : 0), a
        },
        "guid": 1e8,
        "proxy": f.proxy,
        "special": {
            "ready": {"setup": f.bindReady, "teardown": f.noop}, "live": {
                "add": function (a) {
                    f.event.add(this, M(a.origType, a.selector), f.extend({}, a, {
                        "handler": L,
                        "guid": a.handler.guid
                    }))
                }, "remove": function (a) {
                    f.event.remove(this, M(a.origType, a.selector), a)
                }
            }, "beforeunload": {
                "setup": function (a, b, c) {
                    f.isWindow(this) && (this.onbeforeunload = c)
                }, "teardown": function (a, b) {
                    this.onbeforeunload === b && (this.onbeforeunload = null)
                }
            }
        }
    }, f.removeEvent = c.removeEventListener ? function (a, b, c) {
        a.removeEventListener && a.removeEventListener(b, c, !1)
    } : function (a, b, c) {
        a.detachEvent && a.detachEvent("on" + b, c)
    }, f.Event = function (a, b) {
        return this.preventDefault ? (a && a.type ? (this.originalEvent = a, this.type = a.type, this.isDefaultPrevented = a.defaultPrevented || a.returnValue === !1 || a.getPreventDefault && a.getPreventDefault() ? D : C) : this.type = a, b && f.extend(this, b), this.timeStamp = f.now(), void(this[f.expando] = !0)) : new f.Event(a, b)
    }, f.Event.prototype = {
        "preventDefault": function () {
            this.isDefaultPrevented = D;
            var a = this.originalEvent;
            a && (a.preventDefault ? a.preventDefault() : a.returnValue = !1)
        }, "stopPropagation": function () {
            this.isPropagationStopped = D;
            var a = this.originalEvent;
            a && (a.stopPropagation && a.stopPropagation(), a.cancelBubble = !0)
        }, "stopImmediatePropagation": function () {
            this.isImmediatePropagationStopped = D, this.stopPropagation()
        }, "isDefaultPrevented": C, "isPropagationStopped": C, "isImmediatePropagationStopped": C
    };
    var E = function (a) {
        var b = a.relatedTarget, c = !1, d = a.type;
        a.type = a.data, b !== this && (b && (c = f.contains(this, b)), c || (f.event.handle.apply(this, arguments), a.type = d))
    }, F = function (a) {
        a.type = a.data, f.event.handle.apply(this, arguments)
    };
    if (f.each({"mouseenter": "mouseover", "mouseleave": "mouseout"}, function (a, b) {
            f.event.special[a] = {
                "setup": function (c) {
                    f.event.add(this, b, c && c.selector ? F : E, a)
                }, "teardown": function (a) {
                    f.event.remove(this, b, a && a.selector ? F : E)
                }
            }
        }), f.support.submitBubbles || (f.event.special.submit = {
            "setup": function () {
                return f.nodeName(this, "form") ? !1 : (f.event.add(this, "click.specialSubmit", function (a) {
                    var b = a.target, c = f.nodeName(b, "input") || f.nodeName(b, "button") ? b.type : "";
                    "submit" !== c && "image" !== c || !f(b).closest("form").length || J("submit", this, arguments)
                }), void f.event.add(this, "keypress.specialSubmit", function (a) {
                    var b = a.target, c = f.nodeName(b, "input") || f.nodeName(b, "button") ? b.type : "";
                    "text" !== c && "password" !== c || !f(b).closest("form").length || 13 !== a.keyCode || J("submit", this, arguments)
                }))
            }, "teardown": function () {
                f.event.remove(this, ".specialSubmit")
            }
        }), !f.support.changeBubbles) {
        var G, H = function (a) {
            var b = f.nodeName(a, "input") ? a.type : "", c = a.value;
            return "radio" === b || "checkbox" === b ? c = a.checked : "select-multiple" === b ? c = a.selectedIndex > -1 ? f.map(a.options, function (a) {
                return a.selected
            }).join("-") : "" : f.nodeName(a, "select") && (c = a.selectedIndex), c
        }, I = function (a) {
            var d, e, c = a.target;
            x.test(c.nodeName) && !c.readOnly && (d = f._data(c, "_change_data"), e = H(c), ("focusout" !== a.type || "radio" !== c.type) && f._data(c, "_change_data", e), d !== b && e !== d && (null != d || e) && (a.type = "change", a.liveFired = b, f.event.trigger(a, arguments[1], c)))
        };
        f.event.special.change = {
            "filters": {
                "focusout": I, "beforedeactivate": I, "click": function (a) {
                    var b = a.target, c = f.nodeName(b, "input") ? b.type : "";
                    ("radio" === c || "checkbox" === c || f.nodeName(b, "select")) && I.call(this, a)
                }, "keydown": function (a) {
                    var b = a.target, c = f.nodeName(b, "input") ? b.type : "";
                    (13 === a.keyCode && !f.nodeName(b, "textarea") || 32 === a.keyCode && ("checkbox" === c || "radio" === c) || "select-multiple" === c) && I.call(this, a)
                }, "beforeactivate": function (a) {
                    var b = a.target;
                    f._data(b, "_change_data", H(b))
                }
            }, "setup": function () {
                if ("file" === this.type) return !1;
                for (var c in G) f.event.add(this, c + ".specialChange", G[c]);
                return x.test(this.nodeName)
            }, "teardown": function () {
                return f.event.remove(this, ".specialChange"), x.test(this.nodeName)
            }
        }, G = f.event.special.change.filters, G.focus = G.beforeactivate
    }
    f.support.focusinBubbles || f.each({"focus": "focusin", "blur": "focusout"}, function (a, b) {
        function e(a) {
            var c = f.event.fix(a);
            c.type = b, c.originalEvent = {}, f.event.trigger(c, null, c.target), c.isDefaultPrevented() && a.preventDefault()
        }

        var d = 0;
        f.event.special[b] = {
            "setup": function () {
                0 === d++ && c.addEventListener(a, e, !0)
            }, "teardown": function () {
                0 === --d && c.removeEventListener(a, e, !0)
            }
        }
    }), f.each(["bind", "one"], function (a, c) {
        f.fn[c] = function (a, d, e) {
            var g;
            if ("object" == typeof a) {
                for (var h in a) this[c](h, d, a[h], e);
                return this
            }
            if ((2 === arguments.length || d === !1) && (e = d, d = b), "one" === c ? (g = function (a) {
                    return f(this).unbind(a, g), e.apply(this, arguments)
                }, g.guid = e.guid || f.guid++) : g = e, "unload" === a && "one" !== c) this.one(a, d, e); else for (var i = 0, j = this.length; j > i; i++) f.event.add(this[i], a, g, d);
            return this
        }
    }), f.fn.extend({
        "unbind": function (a, b) {
            if ("object" != typeof a || a.preventDefault) for (var d = 0, e = this.length; e > d; d++) f.event.remove(this[d], a, b); else for (var c in a) this.unbind(c, a[c]);
            return this
        }, "delegate": function (a, b, c, d) {
            return this.live(b, c, d, a)
        }, "undelegate": function (a, b, c) {
            return 0 === arguments.length ? this.unbind("live") : this.die(b, null, c, a)
        }, "trigger": function (a, b) {
            return this.each(function () {
                f.event.trigger(a, b, this)
            })
        }, "triggerHandler": function (a, b) {
            return this[0] ? f.event.trigger(a, b, this[0], !0) : void 0
        }, "toggle": function (a) {
            var b = arguments, c = a.guid || f.guid++, d = 0, e = function (c) {
                var e = (f.data(this, "lastToggle" + a.guid) || 0) % d;
                return f.data(this, "lastToggle" + a.guid, e + 1), c.preventDefault(), b[e].apply(this, arguments) || !1
            };
            for (e.guid = c; d < b.length;) b[d++].guid = c;
            return this.click(e)
        }, "hover": function (a, b) {
            return this.mouseenter(a).mouseleave(b || a)
        }
    });
    var K = {"focus": "focusin", "blur": "focusout", "mouseenter": "mouseover", "mouseleave": "mouseout"};
    f.each(["live", "die"], function (a, c) {
        f.fn[c] = function (a, d, e, g) {
            var h, j, k, l, i = 0, m = g || this.selector, n = g ? this : f(this.context);
            if ("object" == typeof a && !a.preventDefault) {
                for (var o in a) n[c](o, d, a[o], m);
                return this
            }
            if ("die" === c && !a && g && "." === g.charAt(0)) return n.unbind(g), this;
            for ((d === !1 || f.isFunction(d)) && (e = d || C, d = b), a = (a || "").split(" "); null != (h = a[i++]);) if (j = w.exec(h), k = "", j && (k = j[0], h = h.replace(w, "")), "hover" !== h) if (l = h, K[h] ? (a.push(K[h] + k), h += k) : h = (K[h] || h) + k, "live" === c) for (var p = 0, q = n.length; q > p; p++) f.event.add(n[p], "live." + M(h, m), {
                "data": d,
                "selector": m,
                "handler": e,
                "origType": h,
                "origHandler": e,
                "preType": l
            }); else n.unbind("live." + M(h, m), e); else a.push("mouseenter" + k, "mouseleave" + k);
            return this
        }
    }), f.each("blur focus focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup error".split(" "), function (a, b) {
        f.fn[b] = function (a, c) {
            return null == c && (c = a, a = null), arguments.length > 0 ? this.bind(b, a, c) : this.trigger(b)
        }, f.attrFn && (f.attrFn[b] = !0)
    }), function () {
        function t(a, b, c, d, e, f) {
            for (var g = 0, h = d.length; h > g; g++) {
                var i = d[g];
                if (i) {
                    var j = !1;
                    for (i = i[a]; i;) {
                        if (i.sizcache === c) {
                            j = d[i.sizset];
                            break
                        }
                        if (1 !== i.nodeType || f || (i.sizcache = c, i.sizset = g), i.nodeName.toLowerCase() === b) {
                            j = i;
                            break
                        }
                        i = i[a]
                    }
                    d[g] = j
                }
            }
        }

        function u(a, b, c, d, e, f) {
            for (var g = 0, h = d.length; h > g; g++) {
                var i = d[g];
                if (i) {
                    var j = !1;
                    for (i = i[a]; i;) {
                        if (i.sizcache === c) {
                            j = d[i.sizset];
                            break
                        }
                        if (1 === i.nodeType) if (f || (i.sizcache = c, i.sizset = g), "string" != typeof b) {
                            if (i === b) {
                                j = !0;
                                break
                            }
                        } else if (k.filter(b, [i]).length > 0) {
                            j = i;
                            break
                        }
                        i = i[a]
                    }
                    d[g] = j
                }
            }
        }

        var a = /((?:\((?:\([^()]+\)|[^()]+)+\)|\[(?:\[[^\[\]]*\]|['"][^'"]*['"]|[^\[\]'"]+)+\]|\\.|[^ >+~,(\[\\]+)+|[>+~])(\s*,\s*)?((?:.|\r|\n)*)/g,
            d = 0, e = Object.prototype.toString, g = !1, h = !0, i = /\\/g, j = /\W/;
        [0, 0].sort(function () {
            return h = !1, 0
        });
        var k = function (b, d, f, g) {
            f = f || [], d = d || c;
            var h = d;
            if (1 !== d.nodeType && 9 !== d.nodeType) return [];
            if (!b || "string" != typeof b) return f;
            var i, j, n, o, q, r, s, t, u = !0, w = k.isXML(d), x = [], y = b;
            do if (a.exec(""), i = a.exec(y), i && (y = i[3], x.push(i[1]), i[2])) {
                o = i[3];
                break
            } while (i);
            if (x.length > 1 && m.exec(b)) if (2 === x.length && l.relative[x[0]]) j = v(x[0] + x[1], d); else for (j = l.relative[x[0]] ? [d] : k(x.shift(), d); x.length;) b = x.shift(), l.relative[b] && (b += x.shift()), j = v(b, j); else if (!g && x.length > 1 && 9 === d.nodeType && !w && l.match.ID.test(x[0]) && !l.match.ID.test(x[x.length - 1]) && (q = k.find(x.shift(), d, w), d = q.expr ? k.filter(q.expr, q.set)[0] : q.set[0]), d) for (q = g ? {
                "expr": x.pop(),
                "set": p(g)
            } : k.find(x.pop(), 1 !== x.length || "~" !== x[0] && "+" !== x[0] || !d.parentNode ? d : d.parentNode, w), j = q.expr ? k.filter(q.expr, q.set) : q.set, x.length > 0 ? n = p(j) : u = !1; x.length;) r = x.pop(), s = r, l.relative[r] ? s = x.pop() : r = "", null == s && (s = d), l.relative[r](n, s, w); else n = x = [];
            if (n || (n = j), n || k.error(r || b), "[object Array]" === e.call(n)) if (u) if (d && 1 === d.nodeType) for (t = 0; null != n[t]; t++) n[t] && (n[t] === !0 || 1 === n[t].nodeType && k.contains(d, n[t])) && f.push(j[t]); else for (t = 0; null != n[t]; t++) n[t] && 1 === n[t].nodeType && f.push(j[t]); else f.push.apply(f, n); else p(n, f);
            return o && (k(o, h, f, g), k.uniqueSort(f)), f
        };
        k.uniqueSort = function (a) {
            if (r && (g = h, a.sort(r), g)) for (var b = 1; b < a.length; b++) a[b] === a[b - 1] && a.splice(b--, 1);
            return a
        }, k.matches = function (a, b) {
            return k(a, null, null, b)
        }, k.matchesSelector = function (a, b) {
            return k(b, null, null, [a]).length > 0
        }, k.find = function (a, b, c) {
            var d;
            if (!a) return [];
            for (var e = 0, f = l.order.length; f > e; e++) {
                var g, h = l.order[e];
                if (g = l.leftMatch[h].exec(a)) {
                    var j = g[1];
                    if (g.splice(1, 1), "\\" !== j.substr(j.length - 1) && (g[1] = (g[1] || "").replace(i, ""), d = l.find[h](g, b, c), null != d)) {
                        a = a.replace(l.match[h], "");
                        break
                    }
                }
            }
            return d || (d = "undefined" != typeof b.getElementsByTagName ? b.getElementsByTagName("*") : []), {
                "set": d,
                "expr": a
            }
        }, k.filter = function (a, c, d, e) {
            for (var f, g, h = a, i = [], j = c, m = c && c[0] && k.isXML(c[0]); a && c.length;) {
                for (var n in l.filter) if (null != (f = l.leftMatch[n].exec(a)) && f[2]) {
                    var o, p, q = l.filter[n], r = f[1];
                    if (g = !1, f.splice(1, 1), "\\" === r.substr(r.length - 1)) continue;
                    if (j === i && (i = []), l.preFilter[n]) if (f = l.preFilter[n](f, j, d, i, e, m)) {
                        if (f === !0) continue
                    } else g = o = !0;
                    if (f) for (var s = 0; null != (p = j[s]); s++) if (p) {
                        o = q(p, f, s, j);
                        var t = e ^ !!o;
                        d && null != o ? t ? g = !0 : j[s] = !1 : t && (i.push(p), g = !0)
                    }
                    if (o !== b) {
                        if (d || (j = i), a = a.replace(l.match[n], ""), !g) return [];
                        break
                    }
                }
                if (a === h) {
                    if (null != g) break;
                    k.error(a)
                }
                h = a
            }
            return j
        }, k.error = function (a) {
            throw"Syntax error, unrecognized expression: " + a
        };
        var l = k.selectors = {
            "order": ["ID", "NAME", "TAG"],
            "match": {
                "ID": /#((?:[\w\u00c0-\uFFFF\-]|\\.)+)/,
                "CLASS": /\.((?:[\w\u00c0-\uFFFF\-]|\\.)+)/,
                "NAME": /\[name=['"]*((?:[\w\u00c0-\uFFFF\-]|\\.)+)['"]*\]/,
                "ATTR": /\[\s*((?:[\w\u00c0-\uFFFF\-]|\\.)+)\s*(?:(\S?=)\s*(?:(['"])(.*?)\3|(#?(?:[\w\u00c0-\uFFFF\-]|\\.)*)|)|)\s*\]/,
                "TAG": /^((?:[\w\u00c0-\uFFFF\*\-]|\\.)+)/,
                "CHILD": /:(only|nth|last|first)-child(?:\(\s*(even|odd|(?:[+\-]?\d+|(?:[+\-]?\d*)?n\s*(?:[+\-]\s*\d+)?))\s*\))?/,
                "POS": /:(nth|eq|gt|lt|first|last|even|odd)(?:\((\d*)\))?(?=[^\-]|$)/,
                "PSEUDO": /:((?:[\w\u00c0-\uFFFF\-]|\\.)+)(?:\((['"]?)((?:\([^\)]+\)|[^\(\)]*)+)\2\))?/
            },
            "leftMatch": {},
            "attrMap": {"class": "className", "for": "htmlFor"},
            "attrHandle": {
                "href": function (a) {
                    return a.getAttribute("href")
                }, "type": function (a) {
                    return a.getAttribute("type")
                }
            },
            "relative": {
                "+": function (a, b) {
                    var c = "string" == typeof b, d = c && !j.test(b), e = c && !d;
                    d && (b = b.toLowerCase());
                    for (var h, f = 0, g = a.length; g > f; f++) if (h = a[f]) {
                        for (; (h = h.previousSibling) && 1 !== h.nodeType;) ;
                        a[f] = e || h && h.nodeName.toLowerCase() === b ? h || !1 : h === b
                    }
                    e && k.filter(b, a, !0)
                }, ">": function (a, b) {
                    var c, d = "string" == typeof b, e = 0, f = a.length;
                    if (d && !j.test(b)) {
                        for (b = b.toLowerCase(); f > e; e++) if (c = a[e]) {
                            var g = c.parentNode;
                            a[e] = g.nodeName.toLowerCase() === b ? g : !1
                        }
                    } else {
                        for (; f > e; e++) c = a[e], c && (a[e] = d ? c.parentNode : c.parentNode === b);
                        d && k.filter(b, a, !0)
                    }
                }, "": function (a, b, c) {
                    var e, f = d++, g = u;
                    "string" != typeof b || j.test(b) || (b = b.toLowerCase(), e = b, g = t), g("parentNode", b, f, a, e, c)
                }, "~": function (a, b, c) {
                    var e, f = d++, g = u;
                    "string" != typeof b || j.test(b) || (b = b.toLowerCase(), e = b, g = t), g("previousSibling", b, f, a, e, c)
                }
            },
            "find": {
                "ID": function (a, b, c) {
                    if ("undefined" != typeof b.getElementById && !c) {
                        var d = b.getElementById(a[1]);
                        return d && d.parentNode ? [d] : []
                    }
                }, "NAME": function (a, b) {
                    if ("undefined" != typeof b.getElementsByName) {
                        for (var c = [], d = b.getElementsByName(a[1]), e = 0, f = d.length; f > e; e++) d[e].getAttribute("name") === a[1] && c.push(d[e]);
                        return 0 === c.length ? null : c
                    }
                }, "TAG": function (a, b) {
                    return "undefined" != typeof b.getElementsByTagName ? b.getElementsByTagName(a[1]) : void 0
                }
            },
            "preFilter": {
                "CLASS": function (a, b, c, d, e, f) {
                    if (a = " " + a[1].replace(i, "") + " ", f) return a;
                    for (var h, g = 0; null != (h = b[g]); g++) h && (e ^ (h.className && (" " + h.className + " ").replace(/[\t\n\r]/g, " ").indexOf(a) >= 0) ? c || d.push(h) : c && (b[g] = !1));
                    return !1
                }, "ID": function (a) {
                    return a[1].replace(i, "")
                }, "TAG": function (a) {
                    return a[1].replace(i, "").toLowerCase()
                }, "CHILD": function (a) {
                    if ("nth" === a[1]) {
                        a[2] || k.error(a[0]), a[2] = a[2].replace(/^\+|\s*/g, "");
                        var b = /(-?)(\d*)(?:n([+\-]?\d*))?/.exec("even" === a[2] && "2n" || "odd" === a[2] && "2n+1" || !/\D/.test(a[2]) && "0n+" + a[2] || a[2]);
                        a[2] = b[1] + (b[2] || 1) - 0, a[3] = b[3] - 0
                    } else a[2] && k.error(a[0]);
                    return a[0] = d++, a
                }, "ATTR": function (a, b, c, d, e, f) {
                    var g = a[1] = a[1].replace(i, "");
                    return !f && l.attrMap[g] && (a[1] = l.attrMap[g]), a[4] = (a[4] || a[5] || "").replace(i, ""), "~=" === a[2] && (a[4] = " " + a[4] + " "), a
                }, "PSEUDO": function (b, c, d, e, f) {
                    if ("not" === b[1]) {
                        if (!((a.exec(b[3]) || "").length > 1 || /^\w/.test(b[3]))) {
                            var g = k.filter(b[3], c, d, !0 ^ f);
                            return d || e.push.apply(e, g), !1
                        }
                        b[3] = k(b[3], null, null, c)
                    } else if (l.match.POS.test(b[0]) || l.match.CHILD.test(b[0])) return !0;
                    return b
                }, "POS": function (a) {
                    return a.unshift(!0), a
                }
            },
            "filters": {
                "enabled": function (a) {
                    return a.disabled === !1 && "hidden" !== a.type
                }, "disabled": function (a) {
                    return a.disabled === !0
                }, "checked": function (a) {
                    return a.checked === !0
                }, "selected": function (a) {
                    return a.parentNode && a.parentNode.selectedIndex, a.selected === !0
                }, "parent": function (a) {
                    return !!a.firstChild
                }, "empty": function (a) {
                    return !a.firstChild
                }, "has": function (a, b, c) {
                    return !!k(c[3], a).length
                }, "header": function (a) {
                    return /h\d/i.test(a.nodeName)
                }, "text": function (a) {
                    var b = a.getAttribute("type"), c = a.type;
                    return "input" === a.nodeName.toLowerCase() && "text" === c && (b === c || null === b)
                }, "radio": function (a) {
                    return "input" === a.nodeName.toLowerCase() && "radio" === a.type
                }, "checkbox": function (a) {
                    return "input" === a.nodeName.toLowerCase() && "checkbox" === a.type
                }, "file": function (a) {
                    return "input" === a.nodeName.toLowerCase() && "file" === a.type
                }, "password": function (a) {
                    return "input" === a.nodeName.toLowerCase() && "password" === a.type
                }, "submit": function (a) {
                    var b = a.nodeName.toLowerCase();
                    return ("input" === b || "button" === b) && "submit" === a.type
                }, "image": function (a) {
                    return "input" === a.nodeName.toLowerCase() && "image" === a.type
                }, "reset": function (a) {
                    var b = a.nodeName.toLowerCase();
                    return ("input" === b || "button" === b) && "reset" === a.type
                }, "button": function (a) {
                    var b = a.nodeName.toLowerCase();
                    return "input" === b && "button" === a.type || "button" === b
                }, "input": function (a) {
                    return /input|select|textarea|button/i.test(a.nodeName)
                }, "focus": function (a) {
                    return a === a.ownerDocument.activeElement
                }
            },
            "setFilters": {
                "first": function (a, b) {
                    return 0 === b
                }, "last": function (a, b, c, d) {
                    return b === d.length - 1
                }, "even": function (a, b) {
                    return b % 2 === 0
                }, "odd": function (a, b) {
                    return b % 2 === 1
                }, "lt": function (a, b, c) {
                    return b < c[3] - 0
                }, "gt": function (a, b, c) {
                    return b > c[3] - 0
                }, "nth": function (a, b, c) {
                    return c[3] - 0 === b
                }, "eq": function (a, b, c) {
                    return c[3] - 0 === b
                }
            },
            "filter": {
                "PSEUDO": function (a, b, c, d) {
                    var e = b[1], f = l.filters[e];
                    if (f) return f(a, c, b, d);
                    if ("contains" === e) return (a.textContent || a.innerText || k.getText([a]) || "").indexOf(b[3]) >= 0;
                    if ("not" === e) {
                        for (var g = b[3], h = 0, i = g.length; i > h; h++) if (g[h] === a) return !1;
                        return !0
                    }
                    k.error(e)
                }, "CHILD": function (a, b) {
                    var c = b[1], d = a;
                    switch (c) {
                        case"only":
                        case"first":
                            for (; d = d.previousSibling;) if (1 === d.nodeType) return !1;
                            if ("first" === c) return !0;
                            d = a;
                        case"last":
                            for (; d = d.nextSibling;) if (1 === d.nodeType) return !1;
                            return !0;
                        case"nth":
                            var e = b[2], f = b[3];
                            if (1 === e && 0 === f) return !0;
                            var g = b[0], h = a.parentNode;
                            if (h && (h.sizcache !== g || !a.nodeIndex)) {
                                var i = 0;
                                for (d = h.firstChild; d; d = d.nextSibling) 1 === d.nodeType && (d.nodeIndex = ++i);
                                h.sizcache = g
                            }
                            var j = a.nodeIndex - f;
                            return 0 === e ? 0 === j : j % e === 0 && j / e >= 0
                    }
                }, "ID": function (a, b) {
                    return 1 === a.nodeType && a.getAttribute("id") === b
                }, "TAG": function (a, b) {
                    return "*" === b && 1 === a.nodeType || a.nodeName.toLowerCase() === b
                }, "CLASS": function (a, b) {
                    return (" " + (a.className || a.getAttribute("class")) + " ").indexOf(b) > -1
                }, "ATTR": function (a, b) {
                    var c = b[1], d = l.attrHandle[c] ? l.attrHandle[c](a) : null != a[c] ? a[c] : a.getAttribute(c),
                        e = d + "", f = b[2], g = b[4];
                    return null == d ? "!=" === f : "=" === f ? e === g : "*=" === f ? e.indexOf(g) >= 0 : "~=" === f ? (" " + e + " ").indexOf(g) >= 0 : g ? "!=" === f ? e !== g : "^=" === f ? 0 === e.indexOf(g) : "$=" === f ? e.substr(e.length - g.length) === g : "|=" === f ? e === g || e.substr(0, g.length + 1) === g + "-" : !1 : e && d !== !1
                }, "POS": function (a, b, c, d) {
                    var e = b[2], f = l.setFilters[e];
                    return f ? f(a, c, b, d) : void 0
                }
            }
        }, m = l.match.POS, n = function (a, b) {
            return "\\" + (b - 0 + 1)
        };
        for (var o in l.match) l.match[o] = new RegExp(l.match[o].source + /(?![^\[]*\])(?![^\(]*\))/.source), l.leftMatch[o] = new RegExp(/(^(?:.|\r|\n)*?)/.source + l.match[o].source.replace(/\\(\d+)/g, n));
        var p = function (a, b) {
            return a = Array.prototype.slice.call(a, 0), b ? (b.push.apply(b, a), b) : a
        };
        try {
            Array.prototype.slice.call(c.documentElement.childNodes, 0)[0].nodeType
        } catch (q) {
            p = function (a, b) {
                var c = 0, d = b || [];
                if ("[object Array]" === e.call(a)) Array.prototype.push.apply(d, a); else if ("number" == typeof a.length) for (var f = a.length; f > c; c++) d.push(a[c]); else for (; a[c]; c++) d.push(a[c]);
                return d
            }
        }
        var r, s;
        c.documentElement.compareDocumentPosition ? r = function (a, b) {
            return a === b ? (g = !0, 0) : a.compareDocumentPosition && b.compareDocumentPosition ? 4 & a.compareDocumentPosition(b) ? -1 : 1 : a.compareDocumentPosition ? -1 : 1
        } : (r = function (a, b) {
            if (a === b) return g = !0, 0;
            if (a.sourceIndex && b.sourceIndex) return a.sourceIndex - b.sourceIndex;
            var c, d, e = [], f = [], h = a.parentNode, i = b.parentNode, j = h;
            if (h === i) return s(a, b);
            if (!h) return -1;
            if (!i) return 1;
            for (; j;) e.unshift(j), j = j.parentNode;
            for (j = i; j;) f.unshift(j), j = j.parentNode;
            c = e.length, d = f.length;
            for (var k = 0; c > k && d > k; k++) if (e[k] !== f[k]) return s(e[k], f[k]);
            return k === c ? s(a, f[k], -1) : s(e[k], b, 1)
        }, s = function (a, b, c) {
            if (a === b) return c;
            for (var d = a.nextSibling; d;) {
                if (d === b) return -1;
                d = d.nextSibling
            }
            return 1
        }), k.getText = function (a) {
            for (var c, b = "", d = 0; a[d]; d++) c = a[d], 3 === c.nodeType || 4 === c.nodeType ? b += c.nodeValue : 8 !== c.nodeType && (b += k.getText(c.childNodes));
            return b
        }, function () {
            var a = c.createElement("div"), d = "script" + (new Date).getTime(), e = c.documentElement;
            a.innerHTML = "<a name='" + d + "'/>", e.insertBefore(a, e.firstChild), c.getElementById(d) && (l.find.ID = function (a, c, d) {
                if ("undefined" != typeof c.getElementById && !d) {
                    var e = c.getElementById(a[1]);
                    return e ? e.id === a[1] || "undefined" != typeof e.getAttributeNode && e.getAttributeNode("id").nodeValue === a[1] ? [e] : b : []
                }
            }, l.filter.ID = function (a, b) {
                var c = "undefined" != typeof a.getAttributeNode && a.getAttributeNode("id");
                return 1 === a.nodeType && c && c.nodeValue === b
            }), e.removeChild(a), e = a = null
        }(), function () {
            var a = c.createElement("div");
            a.appendChild(c.createComment("")), a.getElementsByTagName("*").length > 0 && (l.find.TAG = function (a, b) {
                var c = b.getElementsByTagName(a[1]);
                if ("*" === a[1]) {
                    for (var d = [], e = 0; c[e]; e++) 1 === c[e].nodeType && d.push(c[e]);
                    c = d
                }
                return c
            }), a.innerHTML = "<a href='#'></a>", a.firstChild && "undefined" != typeof a.firstChild.getAttribute && "#" !== a.firstChild.getAttribute("href") && (l.attrHandle.href = function (a) {
                return a.getAttribute("href", 2)
            }), a = null
        }(), c.querySelectorAll && !function () {
            var a = k, b = c.createElement("div"), d = "__sizzle__";
            if (b.innerHTML = "<p class='TEST'></p>", !b.querySelectorAll || 0 !== b.querySelectorAll(".TEST").length) {
                k = function (b, e, f, g) {
                    if (e = e || c, !g && !k.isXML(e)) {
                        var h = /^(\w+$)|^\.([\w\-]+$)|^#([\w\-]+$)/.exec(b);
                        if (h && (1 === e.nodeType || 9 === e.nodeType)) {
                            if (h[1]) return p(e.getElementsByTagName(b), f);
                            if (h[2] && l.find.CLASS && e.getElementsByClassName) return p(e.getElementsByClassName(h[2]), f)
                        }
                        if (9 === e.nodeType) {
                            if ("body" === b && e.body) return p([e.body], f);
                            if (h && h[3]) {
                                var i = e.getElementById(h[3]);
                                if (!i || !i.parentNode) return p([], f);
                                if (i.id === h[3]) return p([i], f)
                            }
                            try {
                                return p(e.querySelectorAll(b), f)
                            } catch (j) {
                            }
                        } else if (1 === e.nodeType && "object" !== e.nodeName.toLowerCase()) {
                            var m = e, n = e.getAttribute("id"), o = n || d, q = e.parentNode, r = /^\s*[+~]/.test(b);
                            n ? o = o.replace(/'/g, "\\$&") : e.setAttribute("id", o), r && q && (e = e.parentNode);
                            try {
                                if (!r || q) return p(e.querySelectorAll("[id='" + o + "'] " + b), f)
                            } catch (s) {
                            } finally {
                                n || m.removeAttribute("id")
                            }
                        }
                    }
                    return a(b, e, f, g)
                };
                for (var e in a) k[e] = a[e];
                b = null
            }
        }(), function () {
            var a = c.documentElement,
                b = a.matchesSelector || a.mozMatchesSelector || a.webkitMatchesSelector || a.msMatchesSelector;
            if (b) {
                var d = !b.call(c.createElement("div"), "div"), e = !1;
                try {
                    b.call(c.documentElement, "[test!='']:sizzle")
                } catch (f) {
                    e = !0
                }
                k.matchesSelector = function (a, c) {
                    if (c = c.replace(/\=\s*([^'"\]]*)\s*\]/g, "='$1']"), !k.isXML(a)) try {
                        if (e || !l.match.PSEUDO.test(c) && !/!=/.test(c)) {
                            var f = b.call(a, c);
                            if (f || !d || a.document && 11 !== a.document.nodeType) return f
                        }
                    } catch (g) {
                    }
                    return k(c, null, null, [a]).length > 0
                }
            }
        }(), function () {
            var a = c.createElement("div");
            a.innerHTML = "<div class='test e'></div><div class='test'></div>", a.getElementsByClassName && 0 !== a.getElementsByClassName("e").length && (a.lastChild.className = "e", 1 !== a.getElementsByClassName("e").length && (l.order.splice(1, 0, "CLASS"), l.find.CLASS = function (a, b, c) {
                return "undefined" == typeof b.getElementsByClassName || c ? void 0 : b.getElementsByClassName(a[1])
            }, a = null))
        }(), k.contains = c.documentElement.contains ? function (a, b) {
            return a !== b && (a.contains ? a.contains(b) : !0)
        } : c.documentElement.compareDocumentPosition ? function (a, b) {
            return !!(16 & a.compareDocumentPosition(b))
        } : function () {
            return !1
        }, k.isXML = function (a) {
            var b = (a ? a.ownerDocument || a : 0).documentElement;
            return b ? "HTML" !== b.nodeName : !1
        };
        var v = function (a, b) {
            for (var c, d = [], e = "", f = b.nodeType ? [b] : b; c = l.match.PSEUDO.exec(a);) e += c[0], a = a.replace(l.match.PSEUDO, "");
            a = l.relative[a] ? a + "*" : a;
            for (var g = 0, h = f.length; h > g; g++) k(a, f[g], d);
            return k.filter(e, d)
        };
        f.find = k, f.expr = k.selectors, f.expr[":"] = f.expr.filters, f.unique = k.uniqueSort, f.text = k.getText, f.isXMLDoc = k.isXML, f.contains = k.contains
    }();
    var N = /Until$/, O = /^(?:parents|prevUntil|prevAll)/, P = /,/, Q = /^.[^:#\[\.,]*$/, R = Array.prototype.slice,
        S = f.expr.match.POS, T = {"children": !0, "contents": !0, "next": !0, "prev": !0};
    f.fn.extend({
        "find": function (a) {
            var c, d, b = this;
            if ("string" != typeof a) return f(a).filter(function () {
                for (c = 0, d = b.length; d > c; c++) if (f.contains(b[c], this)) return !0
            });
            var g, h, i, e = this.pushStack("", "find", a);
            for (c = 0, d = this.length; d > c; c++) if (g = e.length, f.find(a, this[c], e), c > 0) for (h = g; h < e.length; h++) for (i = 0; g > i; i++) if (e[i] === e[h]) {
                e.splice(h--, 1);
                break
            }
            return e
        }, "has": function (a) {
            var b = f(a);
            return this.filter(function () {
                for (var a = 0, c = b.length; c > a; a++) if (f.contains(this, b[a])) return !0
            })
        }, "not": function (a) {
            return this.pushStack(V(this, a, !1), "not", a)
        }, "filter": function (a) {
            return this.pushStack(V(this, a, !0), "filter", a)
        }, "is": function (a) {
            return !!a && ("string" == typeof a ? f.filter(a, this).length > 0 : this.filter(a).length > 0)
        }, "closest": function (a, b) {
            var d, e, c = [], g = this[0];
            if (f.isArray(a)) {
                var h, i, j = {}, k = 1;
                if (g && a.length) {
                    for (d = 0, e = a.length; e > d; d++) i = a[d], j[i] || (j[i] = S.test(i) ? f(i, b || this.context) : i);
                    for (; g && g.ownerDocument && g !== b;) {
                        for (i in j) h = j[i], (h.jquery ? h.index(g) > -1 : f(g).is(h)) && c.push({
                            "selector": i,
                            "elem": g,
                            "level": k
                        });
                        g = g.parentNode, k++
                    }
                }
                return c
            }
            var l = S.test(a) || "string" != typeof a ? f(a, b || this.context) : 0;
            for (d = 0, e = this.length; e > d; d++) for (g = this[d]; g;) {
                if (l ? l.index(g) > -1 : f.find.matchesSelector(g, a)) {
                    c.push(g);
                    break
                }
                if (g = g.parentNode, !g || !g.ownerDocument || g === b || 11 === g.nodeType) break
            }
            return c = c.length > 1 ? f.unique(c) : c, this.pushStack(c, "closest", a)
        }, "index": function (a) {
            return a ? "string" == typeof a ? f.inArray(this[0], f(a)) : f.inArray(a.jquery ? a[0] : a, this) : this[0] && this[0].parentNode ? this.prevAll().length : -1
        }, "add": function (a, b) {
            var c = "string" == typeof a ? f(a, b) : f.makeArray(a && a.nodeType ? [a] : a), d = f.merge(this.get(), c);
            return this.pushStack(U(c[0]) || U(d[0]) ? d : f.unique(d))
        }, "andSelf": function () {
            return this.add(this.prevObject)
        }
    }), f.each({
        "parent": function (a) {
            var b = a.parentNode;
            return b && 11 !== b.nodeType ? b : null
        }, "parents": function (a) {
            return f.dir(a, "parentNode")
        }, "parentsUntil": function (a, b, c) {
            return f.dir(a, "parentNode", c)
        }, "next": function (a) {
            return f.nth(a, 2, "nextSibling")
        }, "prev": function (a) {
            return f.nth(a, 2, "previousSibling")
        }, "nextAll": function (a) {
            return f.dir(a, "nextSibling")
        }, "prevAll": function (a) {
            return f.dir(a, "previousSibling")
        }, "nextUntil": function (a, b, c) {
            return f.dir(a, "nextSibling", c)
        }, "prevUntil": function (a, b, c) {
            return f.dir(a, "previousSibling", c)
        }, "siblings": function (a) {
            return f.sibling(a.parentNode.firstChild, a)
        }, "children": function (a) {
            return f.sibling(a.firstChild)
        }, "contents": function (a) {
            return f.nodeName(a, "iframe") ? a.contentDocument || a.contentWindow.document : f.makeArray(a.childNodes)
        }
    }, function (a, b) {
        f.fn[a] = function (c, d) {
            var e = f.map(this, b, c), g = R.call(arguments);
            return N.test(a) || (d = c), d && "string" == typeof d && (e = f.filter(d, e)), e = this.length > 1 && !T[a] ? f.unique(e) : e, (this.length > 1 || P.test(d)) && O.test(a) && (e = e.reverse()), this.pushStack(e, a, g.join(","))
        }
    }), f.extend({
        "filter": function (a, b, c) {
            return c && (a = ":not(" + a + ")"), 1 === b.length ? f.find.matchesSelector(b[0], a) ? [b[0]] : [] : f.find.matches(a, b)
        }, "dir": function (a, c, d) {
            for (var e = [], g = a[c]; g && 9 !== g.nodeType && (d === b || 1 !== g.nodeType || !f(g).is(d));) 1 === g.nodeType && e.push(g), g = g[c];
            return e
        }, "nth": function (a, b, c) {
            b = b || 1;
            for (var e = 0; a && (1 !== a.nodeType || ++e !== b); a = a[c]) ;
            return a
        }, "sibling": function (a, b) {
            for (var c = []; a; a = a.nextSibling) 1 === a.nodeType && a !== b && c.push(a);
            return c
        }
    });
    var W = / jQuery\d+="(?:\d+|null)"/g, X = /^\s+/,
        Y = /<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi, Z = /<([\w:]+)/, $ = /<tbody/i,
        _ = /<|&#?\w+;/, ab = /<(?:script|object|embed|option|style)/i, bb = /checked\s*(?:[^=]|=\s*.checked.)/i,
        cb = /\/(java|ecma)script/i, db = /^\s*<!(?:\[CDATA\[|\-\-)/, eb = {
            "option": [1, "<select multiple='multiple'>", "</select>"],
            "legend": [1, "<fieldset>", "</fieldset>"],
            "thead": [1, "<table>", "</table>"],
            "tr": [2, "<table><tbody>", "</tbody></table>"],
            "td": [3, "<table><tbody><tr>", "</tr></tbody></table>"],
            "col": [2, "<table><tbody></tbody><colgroup>", "</colgroup></table>"],
            "area": [1, "<map>", "</map>"],
            "_default": [0, "", ""]
        };
    eb.optgroup = eb.option, eb.tbody = eb.tfoot = eb.colgroup = eb.caption = eb.thead, eb.th = eb.td, f.support.htmlSerialize || (eb._default = [1, "div<div>", "</div>"]), f.fn.extend({
        "text": function (a) {
            return f.isFunction(a) ? this.each(function (b) {
                var c = f(this);
                c.text(a.call(this, b, c.text()))
            }) : "object" != typeof a && a !== b ? this.empty().append((this[0] && this[0].ownerDocument || c).createTextNode(a)) : f.text(this)
        }, "wrapAll": function (a) {
            if (f.isFunction(a)) return this.each(function (b) {
                f(this).wrapAll(a.call(this, b))
            });
            if (this[0]) {
                var b = f(a, this[0].ownerDocument).eq(0).clone(!0);
                this[0].parentNode && b.insertBefore(this[0]), b.map(function () {
                    for (var a = this; a.firstChild && 1 === a.firstChild.nodeType;) a = a.firstChild;
                    return a
                }).append(this)
            }
            return this
        }, "wrapInner": function (a) {
            return this.each(f.isFunction(a) ? function (b) {
                f(this).wrapInner(a.call(this, b))
            } : function () {
                var b = f(this), c = b.contents();
                c.length ? c.wrapAll(a) : b.append(a)
            })
        }, "wrap": function (a) {
            return this.each(function () {
                f(this).wrapAll(a)
            })
        }, "unwrap": function () {
            return this.parent().each(function () {
                f.nodeName(this, "body") || f(this).replaceWith(this.childNodes)
            }).end()
        }, "append": function () {
            return this.domManip(arguments, !0, function (a) {
                1 === this.nodeType && this.appendChild(a)
            })
        }, "prepend": function () {
            return this.domManip(arguments, !0, function (a) {
                1 === this.nodeType && this.insertBefore(a, this.firstChild)
            })
        }, "before": function () {
            if (this[0] && this[0].parentNode) return this.domManip(arguments, !1, function (a) {
                this.parentNode.insertBefore(a, this)
            });
            if (arguments.length) {
                var a = f(arguments[0]);
                return a.push.apply(a, this.toArray()), this.pushStack(a, "before", arguments)
            }
        }, "after": function () {
            if (this[0] && this[0].parentNode) return this.domManip(arguments, !1, function (a) {
                this.parentNode.insertBefore(a, this.nextSibling)
            });
            if (arguments.length) {
                var a = this.pushStack(this, "after", arguments);
                return a.push.apply(a, f(arguments[0]).toArray()), a
            }
        }, "remove": function (a, b) {
            for (var d, c = 0; null != (d = this[c]); c++) (!a || f.filter(a, [d]).length) && (b || 1 !== d.nodeType || (f.cleanData(d.getElementsByTagName("*")), f.cleanData([d])), d.parentNode && d.parentNode.removeChild(d));
            return this
        }, "empty": function () {
            for (var b, a = 0; null != (b = this[a]); a++) for (1 === b.nodeType && f.cleanData(b.getElementsByTagName("*")); b.firstChild;) b.removeChild(b.firstChild);
            return this
        }, "clone": function (a, b) {
            return a = null == a ? !1 : a, b = null == b ? a : b, this.map(function () {
                return f.clone(this, a, b)
            })
        }, "html": function (a) {
            if (a === b) return this[0] && 1 === this[0].nodeType ? this[0].innerHTML.replace(W, "") : null;
            if ("string" != typeof a || ab.test(a) || !f.support.leadingWhitespace && X.test(a) || eb[(Z.exec(a) || ["", ""])[1].toLowerCase()]) f.isFunction(a) ? this.each(function (b) {
                var c = f(this);
                c.html(a.call(this, b, c.html()))
            }) : this.empty().append(a); else {
                a = a.replace(Y, "<$1></$2>");
                try {
                    for (var c = 0, d = this.length; d > c; c++) 1 === this[c].nodeType && (f.cleanData(this[c].getElementsByTagName("*")), this[c].innerHTML = a)
                } catch (e) {
                    this.empty().append(a)
                }
            }
            return this
        }, "replaceWith": function (a) {
            return this[0] && this[0].parentNode ? f.isFunction(a) ? this.each(function (b) {
                var c = f(this), d = c.html();
                c.replaceWith(a.call(this, b, d))
            }) : ("string" != typeof a && (a = f(a).detach()), this.each(function () {
                var b = this.nextSibling, c = this.parentNode;
                f(this).remove(), b ? f(b).before(a) : f(c).append(a)
            })) : this.length ? this.pushStack(f(f.isFunction(a) ? a() : a), "replaceWith", a) : this
        }, "detach": function (a) {
            return this.remove(a, !0)
        }, "domManip": function (a, c, d) {
            var e, g, h, i, j = a[0], k = [];
            if (!f.support.checkClone && 3 === arguments.length && "string" == typeof j && bb.test(j)) return this.each(function () {
                f(this).domManip(a, c, d, !0)
            });
            if (f.isFunction(j)) return this.each(function (e) {
                var g = f(this);
                a[0] = j.call(this, e, c ? g.html() : b), g.domManip(a, c, d)
            });
            if (this[0]) {
                if (i = j && j.parentNode, e = f.support.parentNode && i && 11 === i.nodeType && i.childNodes.length === this.length ? {"fragment": i} : f.buildFragment(a, this, k), h = e.fragment, g = 1 === h.childNodes.length ? h = h.firstChild : h.firstChild) {
                    c = c && f.nodeName(g, "tr");
                    for (var l = 0, m = this.length, n = m - 1; m > l; l++) d.call(c ? fb(this[l], g) : this[l], e.cacheable || m > 1 && n > l ? f.clone(h, !0, !0) : h)
                }
                k.length && f.each(k, lb)
            }
            return this
        }
    }), f.buildFragment = function (a, b, d) {
        var e, g, h, i;
        return b && b[0] && (i = b[0].ownerDocument || b[0]), i.createDocumentFragment || (i = c), 1 === a.length && "string" == typeof a[0] && a[0].length < 512 && i === c && "<" === a[0].charAt(0) && !ab.test(a[0]) && (f.support.checkClone || !bb.test(a[0])) && (g = !0, h = f.fragments[a[0]], h && 1 !== h && (e = h)), e || (e = i.createDocumentFragment(), f.clean(a, i, e, d)), g && (f.fragments[a[0]] = h ? e : 1), {
            "fragment": e,
            "cacheable": g
        }
    }, f.fragments = {}, f.each({
        "appendTo": "append",
        "prependTo": "prepend",
        "insertBefore": "before",
        "insertAfter": "after",
        "replaceAll": "replaceWith"
    }, function (a, b) {
        f.fn[a] = function (c) {
            var d = [], e = f(c), g = 1 === this.length && this[0].parentNode;
            if (g && 11 === g.nodeType && 1 === g.childNodes.length && 1 === e.length) return e[b](this[0]), this;
            for (var h = 0, i = e.length; i > h; h++) {
                var j = (h > 0 ? this.clone(!0) : this).get();
                f(e[h])[b](j), d = d.concat(j)
            }
            return this.pushStack(d, a, e.selector)
        }
    }), f.extend({
        "clone": function (a, b, c) {
            var e, g, h, d = a.cloneNode(!0);
            if (!(f.support.noCloneEvent && f.support.noCloneChecked || 1 !== a.nodeType && 11 !== a.nodeType || f.isXMLDoc(a))) for (hb(a, d), e = ib(a), g = ib(d), h = 0; e[h]; ++h) g[h] && hb(e[h], g[h]);
            if (b && (gb(a, d), c)) for (e = ib(a), g = ib(d), h = 0; e[h]; ++h) gb(e[h], g[h]);
            return e = g = null, d
        }, "clean": function (a, b, d, e) {
            var g;
            b = b || c, "undefined" == typeof b.createElement && (b = b.ownerDocument || b[0] && b[0].ownerDocument || c);
            for (var i, k, h = [], j = 0; null != (k = a[j]); j++) if ("number" == typeof k && (k += ""), k) {
                if ("string" == typeof k) if (_.test(k)) {
                    k = k.replace(Y, "<$1></$2>");
                    var l = (Z.exec(k) || ["", ""])[1].toLowerCase(), m = eb[l] || eb._default, n = m[0],
                        o = b.createElement("div");
                    for (o.innerHTML = m[1] + k + m[2]; n--;) o = o.lastChild;
                    if (!f.support.tbody) {
                        var p = $.test(k),
                            q = "table" !== l || p ? "<table>" !== m[1] || p ? [] : o.childNodes : o.firstChild && o.firstChild.childNodes;
                        for (i = q.length - 1; i >= 0; --i) f.nodeName(q[i], "tbody") && !q[i].childNodes.length && q[i].parentNode.removeChild(q[i])
                    }
                    !f.support.leadingWhitespace && X.test(k) && o.insertBefore(b.createTextNode(X.exec(k)[0]), o.firstChild), k = o.childNodes
                } else k = b.createTextNode(k);
                var r;
                if (!f.support.appendChecked) if (k[0] && "number" == typeof(r = k.length)) for (i = 0; r > i; i++) kb(k[i]); else kb(k);
                k.nodeType ? h.push(k) : h = f.merge(h, k)
            }
            if (d) for (g = function (a) {
                return !a.type || cb.test(a.type)
            }, j = 0; h[j]; j++) if (!e || !f.nodeName(h[j], "script") || h[j].type && "text/javascript" !== h[j].type.toLowerCase()) {
                if (1 === h[j].nodeType) {
                    var s = f.grep(h[j].getElementsByTagName("script"), g);
                    h.splice.apply(h, [j + 1, 0].concat(s))
                }
                d.appendChild(h[j])
            } else e.push(h[j].parentNode ? h[j].parentNode.removeChild(h[j]) : h[j]);
            return h
        }, "cleanData": function (a) {
            for (var b, c, j, d = f.cache, e = f.expando, g = f.event.special, h = f.support.deleteExpando, i = 0; null != (j = a[i]); i++) if ((!j.nodeName || !f.noData[j.nodeName.toLowerCase()]) && (c = j[f.expando])) {
                if (b = d[c] && d[c][e], b && b.events) {
                    for (var k in b.events) g[k] ? f.event.remove(j, k) : f.removeEvent(j, k, b.handle);
                    b.handle && (b.handle.elem = null)
                }
                h ? delete j[f.expando] : j.removeAttribute && j.removeAttribute(f.expando), delete d[c]
            }
        }
    });
    var vb, wb, xb, mb = /alpha\([^)]*\)/i, nb = /opacity=([^)]*)/, ob = /([A-Z]|^ms)/g, pb = /^-?\d+(?:px)?$/i,
        qb = /^-?\d/, rb = /^([\-+])=([\-+.\de]+)/,
        sb = {"position": "absolute", "visibility": "hidden", "display": "block"}, tb = ["Left", "Right"],
        ub = ["Top", "Bottom"];
    f.fn.css = function (a, c) {
        return 2 === arguments.length && c === b ? this : f.access(this, a, c, !0, function (a, c, d) {
            return d !== b ? f.style(a, c, d) : f.css(a, c)
        })
    }, f.extend({
        "cssHooks": {
            "opacity": {
                "get": function (a, b) {
                    if (b) {
                        var c = vb(a, "opacity", "opacity");
                        return "" === c ? "1" : c
                    }
                    return a.style.opacity
                }
            }
        },
        "cssNumber": {
            "fillOpacity": !0,
            "fontWeight": !0,
            "lineHeight": !0,
            "opacity": !0,
            "orphans": !0,
            "widows": !0,
            "zIndex": !0,
            "zoom": !0
        },
        "cssProps": {"float": f.support.cssFloat ? "cssFloat" : "styleFloat"},
        "style": function (a, c, d, e) {
            if (a && 3 !== a.nodeType && 8 !== a.nodeType && a.style) {
                var g, h, i = f.camelCase(c), j = a.style, k = f.cssHooks[i];
                if (c = f.cssProps[i] || i, d === b) return k && "get" in k && (g = k.get(a, !1, e)) !== b ? g : j[c];
                if (h = typeof d, "string" === h && (g = rb.exec(d)) && (d = +(g[1] + 1) * +g[2] + parseFloat(f.css(a, c)), h = "number"), !(null == d || "number" === h && isNaN(d) || ("number" !== h || f.cssNumber[i] || (d += "px"), k && "set" in k && (d = k.set(a, d)) === b))) try {
                    j[c] = d
                } catch (l) {
                }
            }
        },
        "css": function (a, c, d) {
            var e, g;
            return c = f.camelCase(c), g = f.cssHooks[c], c = f.cssProps[c] || c, "cssFloat" === c && (c = "float"), g && "get" in g && (e = g.get(a, !0, d)) !== b ? e : vb ? vb(a, c) : void 0
        },
        "swap": function (a, b, c) {
            var d = {};
            for (var e in b) d[e] = a.style[e], a.style[e] = b[e];
            c.call(a);
            for (e in b) a.style[e] = d[e]
        }
    }), f.curCSS = f.css, f.each(["height", "width"], function (a, b) {
        f.cssHooks[b] = {
            "get": function (a, c, d) {
                var e;
                return c ? 0 !== a.offsetWidth ? yb(a, b, d) : (f.swap(a, sb, function () {
                    e = yb(a, b, d)
                }), e) : void 0
            }, "set": function (a, b) {
                return pb.test(b) ? (b = parseFloat(b), b >= 0 ? b + "px" : void 0) : b
            }
        }
    }), f.support.opacity || (f.cssHooks.opacity = {
        "get": function (a, b) {
            return nb.test((b && a.currentStyle ? a.currentStyle.filter : a.style.filter) || "") ? parseFloat(RegExp.$1) / 100 + "" : b ? "1" : ""
        }, "set": function (a, b) {
            var c = a.style, d = a.currentStyle, e = f.isNaN(b) ? "" : "alpha(opacity=" + 100 * b + ")",
                g = d && d.filter || c.filter || "";
            c.zoom = 1, b >= 1 && "" === f.trim(g.replace(mb, "")) && (c.removeAttribute("filter"), d && !d.filter) || (c.filter = mb.test(g) ? g.replace(mb, e) : g + " " + e)
        }
    }), f(function () {
        f.support.reliableMarginRight || (f.cssHooks.marginRight = {
            "get": function (a, b) {
                var c;
                return f.swap(a, {"display": "inline-block"}, function () {
                    c = b ? vb(a, "margin-right", "marginRight") : a.style.marginRight
                }), c
            }
        })
    }), c.defaultView && c.defaultView.getComputedStyle && (wb = function (a, c) {
        var d, e, g;
        return c = c.replace(ob, "-$1").toLowerCase(), (e = a.ownerDocument.defaultView) ? ((g = e.getComputedStyle(a, null)) && (d = g.getPropertyValue(c), "" !== d || f.contains(a.ownerDocument.documentElement, a) || (d = f.style(a, c))), d) : b
    }), c.documentElement.currentStyle && (xb = function (a, b) {
        var c, d = a.currentStyle && a.currentStyle[b], e = a.runtimeStyle && a.runtimeStyle[b], f = a.style;
        return !pb.test(d) && qb.test(d) && (c = f.left, e && (a.runtimeStyle.left = a.currentStyle.left), f.left = "fontSize" === b ? "1em" : d || 0, d = f.pixelLeft + "px", f.left = c, e && (a.runtimeStyle.left = e)), "" === d ? "auto" : d
    }), vb = wb || xb, f.expr && f.expr.filters && (f.expr.filters.hidden = function (a) {
        var b = a.offsetWidth, c = a.offsetHeight;
        return 0 === b && 0 === c || !f.support.reliableHiddenOffsets && "none" === (a.style.display || f.css(a, "display"))
    }, f.expr.filters.visible = function (a) {
        return !f.expr.filters.hidden(a)
    });
    var Rb, Sb, zb = /%20/g, Ab = /\[\]$/, Bb = /\r?\n/g, Cb = /#.*$/, Db = /^(.*?):[ \t]*([^\r\n]*)\r?$/gm,
        Eb = /^(?:color|date|datetime|datetime-local|email|hidden|month|number|password|range|search|tel|text|time|url|week)$/i,
        Fb = /^(?:about|app|app\-storage|.+\-extension|file|res|widget):$/, Gb = /^(?:GET|HEAD)$/, Hb = /^\/\//,
        Ib = /\?/, Jb = /<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi, Kb = /^(?:select|textarea)/i, Lb = /\s+/,
        Mb = /([?&])_=[^&]*/, Nb = /^([\w\+\.\-]+:)(?:\/\/([^\/?#:]*)(?::(\d+))?)?/, Ob = f.fn.load, Pb = {}, Qb = {},
        Tb = ["*/"] + ["*"];
    try {
        Rb = e.href
    } catch (Ub) {
        Rb = c.createElement("a"), Rb.href = "", Rb = Rb.href
    }
    Sb = Nb.exec(Rb.toLowerCase()) || [], f.fn.extend({
        "load": function (a, c, d) {
            if ("string" != typeof a && Ob) return Ob.apply(this, arguments);
            if (!this.length) return this;
            var e = a.indexOf(" ");
            if (e >= 0) {
                var g = a.slice(e, a.length);
                a = a.slice(0, e)
            }
            var h = "GET";
            c && (f.isFunction(c) ? (d = c, c = b) : "object" == typeof c && (c = f.param(c, f.ajaxSettings.traditional), h = "POST"));
            var i = this;
            return f.ajax({
                "url": a, "type": h, "dataType": "html", "data": c, "complete": function (a, b, c) {
                    c = a.responseText, a.isResolved() && (a.done(function (a) {
                        c = a
                    }), i.html(g ? f("<div>").append(c.replace(Jb, "")).find(g) : c)), d && i.each(d, [c, b, a])
                }
            }), this
        }, "serialize": function () {
            return f.param(this.serializeArray())
        }, "serializeArray": function () {
            return this.map(function () {
                return this.elements ? f.makeArray(this.elements) : this
            }).filter(function () {
                return this.name && !this.disabled && (this.checked || Kb.test(this.nodeName) || Eb.test(this.type))
            }).map(function (a, b) {
                var c = f(this).val();
                return null == c ? null : f.isArray(c) ? f.map(c, function (a) {
                    return {"name": b.name, "value": a.replace(Bb, "\r\n")}
                }) : {"name": b.name, "value": c.replace(Bb, "\r\n")}
            }).get()
        }
    }), f.each("ajaxStart ajaxStop ajaxComplete ajaxError ajaxSuccess ajaxSend".split(" "), function (a, b) {
        f.fn[b] = function (a) {
            return this.bind(b, a)
        }
    }), f.each(["get", "post"], function (a, c) {
        f[c] = function (a, d, e, g) {
            return f.isFunction(d) && (g = g || e, e = d, d = b), f.ajax({
                "type": c,
                "url": a,
                "data": d,
                "success": e,
                "dataType": g
            })
        }
    }), f.extend({
        "getScript": function (a, c) {
            return f.get(a, b, c, "script")
        },
        "getJSON": function (a, b, c) {
            return f.get(a, b, c, "json")
        },
        "ajaxSetup": function (a, b) {
            return b ? Xb(a, f.ajaxSettings) : (b = a, a = f.ajaxSettings), Xb(a, b), a
        },
        "ajaxSettings": {
            "url": Rb,
            "isLocal": Fb.test(Sb[1]),
            "global": !0,
            "type": "GET",
            "contentType": "application/x-www-form-urlencoded",
            "processData": !0,
            "async": !0,
            "accepts": {
                "xml": "application/xml, text/xml",
                "html": "text/html",
                "text": "text/plain",
                "json": "application/json, text/javascript",
                "*": Tb
            },
            "contents": {"xml": /xml/, "html": /html/, "json": /json/},
            "responseFields": {"xml": "responseXML", "text": "responseText"},
            "converters": {"* text": a.String, "text html": !0, "text json": f.parseJSON, "text xml": f.parseXML},
            "flatOptions": {"context": !0, "url": !0}
        },
        "ajaxPrefilter": Vb(Pb),
        "ajaxTransport": Vb(Qb),
        "ajax": function (a, c) {
            function w(a, c, l, m) {
                if (2 !== s) {
                    s = 2, q && clearTimeout(q), p = b, n = m || "", v.readyState = a > 0 ? 4 : 0;
                    var o, r, u, y, z, w = c, x = l ? Zb(d, v, l) : b;
                    if (a >= 200 && 300 > a || 304 === a) if (d.ifModified && ((y = v.getResponseHeader("Last-Modified")) && (f.lastModified[k] = y), (z = v.getResponseHeader("Etag")) && (f.etag[k] = z)), 304 === a) w = "notmodified", o = !0; else try {
                        r = $b(d, x), w = "success", o = !0
                    } catch (A) {
                        w = "parsererror", u = A
                    } else u = w, (!w || a) && (w = "error", 0 > a && (a = 0));
                    v.status = a, v.statusText = "" + (c || w), o ? h.resolveWith(e, [r, w, v]) : h.rejectWith(e, [v, w, u]), v.statusCode(j), j = b, t && g.trigger("ajax" + (o ? "Success" : "Error"), [v, d, o ? r : u]), i.resolveWith(e, [v, w]), t && (g.trigger("ajaxComplete", [v, d]), --f.active || f.event.trigger("ajaxStop"))
                }
            }

            "object" == typeof a && (c = a, a = b), c = c || {};
            var k, n, o, p, q, r, t, u, d = f.ajaxSetup({}, c), e = d.context || d,
                g = e !== d && (e.nodeType || e instanceof f) ? f(e) : f.event, h = f.Deferred(), i = f._Deferred(),
                j = d.statusCode || {}, l = {}, m = {}, s = 0, v = {
                    "readyState": 0, "setRequestHeader": function (a, b) {
                        if (!s) {
                            var c = a.toLowerCase();
                            a = m[c] = m[c] || a, l[a] = b
                        }
                        return this
                    }, "getAllResponseHeaders": function () {
                        return 2 === s ? n : null
                    }, "getResponseHeader": function (a) {
                        var c;
                        if (2 === s) {
                            if (!o) for (o = {}; c = Db.exec(n);) o[c[1].toLowerCase()] = c[2];
                            c = o[a.toLowerCase()]
                        }
                        return c === b ? null : c
                    }, "overrideMimeType": function (a) {
                        return s || (d.mimeType = a), this
                    }, "abort": function (a) {
                        return a = a || "abort", p && p.abort(a), w(0, a), this
                    }
                };
            if (h.promise(v), v.success = v.done, v.error = v.fail, v.complete = i.done, v.statusCode = function (a) {
                    if (a) {
                        var b;
                        if (2 > s) for (b in a) j[b] = [j[b], a[b]]; else b = a[v.status], v.then(b, b)
                    }
                    return this
                }, d.url = ((a || d.url) + "").replace(Cb, "").replace(Hb, Sb[1] + "//"), d.dataTypes = f.trim(d.dataType || "*").toLowerCase().split(Lb), null == d.crossDomain && (r = Nb.exec(d.url.toLowerCase()), d.crossDomain = !(!r || r[1] == Sb[1] && r[2] == Sb[2] && (r[3] || ("http:" === r[1] ? 80 : 443)) == (Sb[3] || ("http:" === Sb[1] ? 80 : 443)))), d.data && d.processData && "string" != typeof d.data && (d.data = f.param(d.data, d.traditional)), Wb(Pb, d, c, v), 2 === s) return !1;
            if (t = d.global, d.type = d.type.toUpperCase(), d.hasContent = !Gb.test(d.type), t && 0 === f.active++ && f.event.trigger("ajaxStart"), !d.hasContent && (d.data && (d.url += (Ib.test(d.url) ? "&" : "?") + d.data, delete d.data), k = d.url, d.cache === !1)) {
                var x = f.now(), y = d.url.replace(Mb, "$1_=" + x);
                d.url = y + (y === d.url ? (Ib.test(d.url) ? "&" : "?") + "_=" + x : "")
            }
            (d.data && d.hasContent && d.contentType !== !1 || c.contentType) && v.setRequestHeader("Content-Type", d.contentType), d.ifModified && (k = k || d.url, f.lastModified[k] && v.setRequestHeader("If-Modified-Since", f.lastModified[k]), f.etag[k] && v.setRequestHeader("If-None-Match", f.etag[k])), v.setRequestHeader("Accept", d.dataTypes[0] && d.accepts[d.dataTypes[0]] ? d.accepts[d.dataTypes[0]] + ("*" !== d.dataTypes[0] ? ", " + Tb + "; q=0.01" : "") : d.accepts["*"]);
            for (u in d.headers) v.setRequestHeader(u, d.headers[u]);
            if (d.beforeSend && (d.beforeSend.call(e, v, d) === !1 || 2 === s)) return v.abort(), !1;
            for (u in{"success": 1, "error": 1, "complete": 1}) v[u](d[u]);
            if (p = Wb(Qb, d, c, v)) {
                v.readyState = 1, t && g.trigger("ajaxSend", [v, d]), d.async && d.timeout > 0 && (q = setTimeout(function () {
                    v.abort("timeout")
                }, d.timeout));
                try {
                    s = 1, p.send(l, w)
                } catch (z) {
                    2 > s ? w(-1, z) : f.error(z)
                }
            } else w(-1, "No Transport");
            return v
        },
        "param": function (a, c) {
            var d = [], e = function (a, b) {
                b = f.isFunction(b) ? b() : b, d[d.length] = encodeURIComponent(a) + "=" + encodeURIComponent(b)
            };
            if (c === b && (c = f.ajaxSettings.traditional), f.isArray(a) || a.jquery && !f.isPlainObject(a)) f.each(a, function () {
                e(this.name, this.value)
            }); else for (var g in a) Yb(g, a[g], c, e);
            return d.join("&").replace(zb, "+")
        }
    }), f.extend({"active": 0, "lastModified": {}, "etag": {}});
    var ac = (f.now(), /(\=)\?(&|$)|\?\?/i);
    f.ajaxSetup({
        "jsonp": "callback", "jsonpCallback": function () {
            return "jQuery" + Math.floor(1e7 * Math.random())
        }
    }), f.ajaxPrefilter("json jsonp", function (b, c, d) {
        var e = "application/x-www-form-urlencoded" === b.contentType && "string" == typeof b.data;
        if ("jsonp" === b.dataTypes[0] || b.jsonp !== !1 && (ac.test(b.url) || e && ac.test(b.data))) {
            var g, h = b.jsonpCallback = f.isFunction(b.jsonpCallback) ? b.jsonpCallback() : b.jsonpCallback, i = a[h],
                j = b.url, k = b.data, l = "$1" + h + "$2";
            return b.jsonp !== !1 && (j = j.replace(ac, l), b.url === j && (e && (k = k.replace(ac, l)), b.data === k && (j += (/\?/.test(j) ? "&" : "?") + b.jsonp + "=" + h))), b.url = j, b.data = k, a[h] = function (a) {
                g = [a]
            }, d.always(function () {
                a[h] = i, g && f.isFunction(i) && a[h](g[0])
            }), b.converters["script json"] = function () {
                return g || f.error(h + " was not called"), g[0]
            }, b.dataTypes[0] = "json", "script"
        }
    }), f.ajaxSetup({
        "accepts": {"script": "text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"},
        "contents": {"script": /javascript|ecmascript/},
        "converters": {
            "text script": function (a) {
                return f.globalEval(a), a
            }
        }
    }), f.ajaxPrefilter("script", function (a) {
        a.cache === b && (a.cache = !1), a.crossDomain && (a.type = "GET", a.global = !1)
    }), f.ajaxTransport("script", function (a) {
        if (a.crossDomain) {
            var d, e = c.head || c.getElementsByTagName("head")[0] || c.documentElement;
            return {
                "send": function (f, g) {
                    d = c.createElement("script"), d.async = "async", a.scriptCharset && (d.charset = a.scriptCharset), d.src = a.url, d.onload = d.onreadystatechange = function (a, c) {
                        (c || !d.readyState || /loaded|complete/.test(d.readyState)) && (d.onload = d.onreadystatechange = null, e && d.parentNode && e.removeChild(d), d = b, c || g(200, "success"))
                    }, e.insertBefore(d, e.firstChild)
                }, "abort": function () {
                    d && d.onload(0, 1)
                }
            }
        }
    });
    var dc, bc = a.ActiveXObject ? function () {
        for (var a in dc) dc[a](0, 1)
    } : !1, cc = 0;
    f.ajaxSettings.xhr = a.ActiveXObject ? function () {
        return !this.isLocal && ec() || fc()
    } : ec, function (a) {
        f.extend(f.support, {"ajax": !!a, "cors": !!a && "withCredentials" in a})
    }(f.ajaxSettings.xhr()), f.support.ajax && f.ajaxTransport(function (c) {
        if (!c.crossDomain || f.support.cors) {
            var d;
            return {
                "send": function (e, g) {
                    var i, j, h = c.xhr();
                    if (c.username ? h.open(c.type, c.url, c.async, c.username, c.password) : h.open(c.type, c.url, c.async), c.xhrFields) for (j in c.xhrFields) h[j] = c.xhrFields[j];
                    c.mimeType && h.overrideMimeType && h.overrideMimeType(c.mimeType), c.crossDomain || e["X-Requested-With"] || (e["X-Requested-With"] = "XMLHttpRequest");
                    try {
                        for (j in e) h.setRequestHeader(j, e[j])
                    } catch (k) {
                    }
                    h.send(c.hasContent && c.data || null), d = function (a, e) {
                        var j, k, l, m, n;
                        try {
                            if (d && (e || 4 === h.readyState)) if (d = b, i && (h.onreadystatechange = f.noop, bc && delete dc[i]), e) 4 !== h.readyState && h.abort(); else {
                                j = h.status, l = h.getAllResponseHeaders(), m = {}, n = h.responseXML, n && n.documentElement && (m.xml = n), m.text = h.responseText;
                                try {
                                    k = h.statusText
                                } catch (o) {
                                    k = ""
                                }
                                j || !c.isLocal || c.crossDomain ? 1223 === j && (j = 204) : j = m.text ? 200 : 404
                            }
                        } catch (p) {
                            e || g(-1, p)
                        }
                        m && g(j, k, m, l)
                    }, c.async && 4 !== h.readyState ? (i = ++cc, bc && (dc || (dc = {}, f(a).unload(bc)), dc[i] = d), h.onreadystatechange = d) : d()
                }, "abort": function () {
                    d && d(0, 1)
                }
            }
        }
    });
    var hc, ic, lc, nc, gc = {}, jc = /^(?:toggle|show|hide)$/, kc = /^([+\-]=)?([\d+.\-]+)([a-z%]*)$/i,
        mc = [["height", "marginTop", "marginBottom", "paddingTop", "paddingBottom"], ["width", "marginLeft", "marginRight", "paddingLeft", "paddingRight"], ["opacity"]];
    f.fn.extend({
        "show": function (a, b, c) {
            var d, e;
            if (a || 0 === a) return this.animate(qc("show", 3), a, b, c);
            for (var g = 0, h = this.length; h > g; g++) d = this[g], d.style && (e = d.style.display, f._data(d, "olddisplay") || "none" !== e || (e = d.style.display = ""), "" === e && "none" === f.css(d, "display") && f._data(d, "olddisplay", rc(d.nodeName)));
            for (g = 0; h > g; g++) d = this[g], d.style && (e = d.style.display, ("" === e || "none" === e) && (d.style.display = f._data(d, "olddisplay") || ""));
            return this
        }, "hide": function (a, b, c) {
            if (a || 0 === a) return this.animate(qc("hide", 3), a, b, c);
            for (var d = 0, e = this.length; e > d; d++) if (this[d].style) {
                var g = f.css(this[d], "display");
                "none" === g || f._data(this[d], "olddisplay") || f._data(this[d], "olddisplay", g)
            }
            for (d = 0; e > d; d++) this[d].style && (this[d].style.display = "none");
            return this
        }, "_toggle": f.fn.toggle, "toggle": function (a, b, c) {
            var d = "boolean" == typeof a;
            return f.isFunction(a) && f.isFunction(b) ? this._toggle.apply(this, arguments) : null == a || d ? this.each(function () {
                var b = d ? a : f(this).is(":hidden");
                f(this)[b ? "show" : "hide"]()
            }) : this.animate(qc("toggle", 3), a, b, c), this
        }, "fadeTo": function (a, b, c, d) {
            return this.filter(":hidden").css("opacity", 0).show().end().animate({"opacity": b}, a, c, d)
        }, "animate": function (a, b, c, d) {
            var e = f.speed(b, c, d);
            return f.isEmptyObject(a) ? this.each(e.complete, [!1]) : (a = f.extend({}, a), this[e.queue === !1 ? "each" : "queue"](function () {
                e.queue === !1 && f._mark(this);
                var g, h, i, j, k, l, m, n, o, b = f.extend({}, e), c = 1 === this.nodeType,
                    d = c && f(this).is(":hidden");
                b.animatedProperties = {};
                for (i in a) {
                    if (g = f.camelCase(i), i !== g && (a[g] = a[i], delete a[i]), h = a[g], f.isArray(h) ? (b.animatedProperties[g] = h[1], h = a[g] = h[0]) : b.animatedProperties[g] = b.specialEasing && b.specialEasing[g] || b.easing || "swing", "hide" === h && d || "show" === h && !d) return b.complete.call(this);
                    !c || "height" !== g && "width" !== g || (b.overflow = [this.style.overflow, this.style.overflowX, this.style.overflowY], "inline" === f.css(this, "display") && "none" === f.css(this, "float") && (f.support.inlineBlockNeedsLayout ? (j = rc(this.nodeName), "inline" === j ? this.style.display = "inline-block" : (this.style.display = "inline", this.style.zoom = 1)) : this.style.display = "inline-block"))
                }
                null != b.overflow && (this.style.overflow = "hidden");
                for (i in a) k = new f.fx(this, b, i), h = a[i], jc.test(h) ? k["toggle" === h ? d ? "show" : "hide" : h]() : (l = kc.exec(h), m = k.cur(), l ? (n = parseFloat(l[2]), o = l[3] || (f.cssNumber[i] ? "" : "px"), "px" !== o && (f.style(this, i, (n || 1) + o), m = (n || 1) / k.cur() * m, f.style(this, i, m + o)), l[1] && (n = ("-=" === l[1] ? -1 : 1) * n + m), k.custom(m, n, o)) : k.custom(m, h, ""));
                return !0
            }))
        }, "stop": function (a, b) {
            return a && this.queue([]), this.each(function () {
                var a = f.timers, c = a.length;
                for (b || f._unmark(!0, this); c--;) a[c].elem === this && (b && a[c](!0), a.splice(c, 1))
            }), b || this.dequeue(), this
        }
    }), f.each({
        "slideDown": qc("show", 1),
        "slideUp": qc("hide", 1),
        "slideToggle": qc("toggle", 1),
        "fadeIn": {"opacity": "show"},
        "fadeOut": {"opacity": "hide"},
        "fadeToggle": {"opacity": "toggle"}
    }, function (a, b) {
        f.fn[a] = function (a, c, d) {
            return this.animate(b, a, c, d)
        }
    }), f.extend({
        "speed": function (a, b, c) {
            var d = a && "object" == typeof a ? f.extend({}, a) : {
                "complete": c || !c && b || f.isFunction(a) && a,
                "duration": a,
                "easing": c && b || b && !f.isFunction(b) && b
            };
            return d.duration = f.fx.off ? 0 : "number" == typeof d.duration ? d.duration : d.duration in f.fx.speeds ? f.fx.speeds[d.duration] : f.fx.speeds._default, d.old = d.complete, d.complete = function (a) {
                f.isFunction(d.old) && d.old.call(this), d.queue !== !1 ? f.dequeue(this) : a !== !1 && f._unmark(this)
            }, d
        }, "easing": {
            "linear": function (a, b, c, d) {
                return c + d * a
            }, "swing": function (a, b, c, d) {
                return (-Math.cos(a * Math.PI) / 2 + .5) * d + c
            }
        }, "timers": [], "fx": function (a, b, c) {
            this.options = b, this.elem = a, this.prop = c, b.orig = b.orig || {}
        }
    }), f.fx.prototype = {
        "update": function () {
            this.options.step && this.options.step.call(this.elem, this.now, this), (f.fx.step[this.prop] || f.fx.step._default)(this)
        }, "cur": function () {
            if (null != this.elem[this.prop] && (!this.elem.style || null == this.elem.style[this.prop])) return this.elem[this.prop];
            var a, b = f.css(this.elem, this.prop);
            return isNaN(a = parseFloat(b)) ? b && "auto" !== b ? b : 0 : a
        }, "custom": function (a, b, c) {
            function g(a) {
                return d.step(a)
            }

            var d = this, e = f.fx;
            this.startTime = nc || oc(), this.start = a, this.end = b, this.unit = c || this.unit || (f.cssNumber[this.prop] ? "" : "px"), this.now = this.start, this.pos = this.state = 0, g.elem = this.elem, g() && f.timers.push(g) && !lc && (lc = setInterval(e.tick, e.interval))
        }, "show": function () {
            this.options.orig[this.prop] = f.style(this.elem, this.prop), this.options.show = !0, this.custom("width" === this.prop || "height" === this.prop ? 1 : 0, this.cur()), f(this.elem).show()
        }, "hide": function () {
            this.options.orig[this.prop] = f.style(this.elem, this.prop), this.options.hide = !0, this.custom(this.cur(), 0)
        }, "step": function (a) {
            var g, h, b = nc || oc(), c = !0, d = this.elem, e = this.options;
            if (a || b >= e.duration + this.startTime) {
                this.now = this.end, this.pos = this.state = 1, this.update(), e.animatedProperties[this.prop] = !0;
                for (g in e.animatedProperties) e.animatedProperties[g] !== !0 && (c = !1);
                if (c) {
                    if (null == e.overflow || f.support.shrinkWrapBlocks || f.each(["", "X", "Y"], function (a, b) {
                            d.style["overflow" + b] = e.overflow[a]
                        }), e.hide && f(d).hide(), e.hide || e.show) for (var i in e.animatedProperties) f.style(d, i, e.orig[i]);
                    e.complete.call(d)
                }
                return !1
            }
            return 1 / 0 == e.duration ? this.now = b : (h = b - this.startTime, this.state = h / e.duration, this.pos = f.easing[e.animatedProperties[this.prop]](this.state, h, 0, 1, e.duration), this.now = this.start + (this.end - this.start) * this.pos), this.update(), !0
        }
    }, f.extend(f.fx, {
        "tick": function () {
            for (var a = f.timers, b = 0; b < a.length; ++b) a[b]() || a.splice(b--, 1);
            a.length || f.fx.stop()
        }, "interval": 13, "stop": function () {
            clearInterval(lc), lc = null
        }, "speeds": {"slow": 600, "fast": 200, "_default": 400}, "step": {
            "opacity": function (a) {
                f.style(a.elem, "opacity", a.now)
            }, "_default": function (a) {
                a.elem.style && null != a.elem.style[a.prop] ? a.elem.style[a.prop] = ("width" === a.prop || "height" === a.prop ? Math.max(0, a.now) : a.now) + a.unit : a.elem[a.prop] = a.now
            }
        }
    }), f.expr && f.expr.filters && (f.expr.filters.animated = function (a) {
        return f.grep(f.timers, function (b) {
            return a === b.elem
        }).length
    });
    var sc = /^t(?:able|d|h)$/i, tc = /^(?:body|html)$/i;
    f.fn.offset = "getBoundingClientRect" in c.documentElement ? function (a) {
        var c, b = this[0];
        if (a) return this.each(function (b) {
            f.offset.setOffset(this, a, b)
        });
        if (!b || !b.ownerDocument) return null;
        if (b === b.ownerDocument.body) return f.offset.bodyOffset(b);
        try {
            c = b.getBoundingClientRect()
        } catch (d) {
        }
        var e = b.ownerDocument, g = e.documentElement;
        if (!c || !f.contains(g, b)) return c ? {"top": c.top, "left": c.left} : {"top": 0, "left": 0};
        var h = e.body, i = uc(e), j = g.clientTop || h.clientTop || 0, k = g.clientLeft || h.clientLeft || 0,
            l = i.pageYOffset || f.support.boxModel && g.scrollTop || h.scrollTop,
            m = i.pageXOffset || f.support.boxModel && g.scrollLeft || h.scrollLeft, n = c.top + l - j,
            o = c.left + m - k;
        return {"top": n, "left": o}
    } : function (a) {
        var b = this[0];
        if (a) return this.each(function (b) {
            f.offset.setOffset(this, a, b)
        });
        if (!b || !b.ownerDocument) return null;
        if (b === b.ownerDocument.body) return f.offset.bodyOffset(b);
        f.offset.initialize();
        for (var c, d = b.offsetParent, e = b, g = b.ownerDocument, h = g.documentElement, i = g.body, j = g.defaultView, k = j ? j.getComputedStyle(b, null) : b.currentStyle, l = b.offsetTop, m = b.offsetLeft; (b = b.parentNode) && b !== i && b !== h && (!f.offset.supportsFixedPosition || "fixed" !== k.position);) c = j ? j.getComputedStyle(b, null) : b.currentStyle, l -= b.scrollTop, m -= b.scrollLeft, b === d && (l += b.offsetTop, m += b.offsetLeft, !f.offset.doesNotAddBorder || f.offset.doesAddBorderForTableAndCells && sc.test(b.nodeName) || (l += parseFloat(c.borderTopWidth) || 0, m += parseFloat(c.borderLeftWidth) || 0), e = d, d = b.offsetParent), f.offset.subtractsBorderForOverflowNotVisible && "visible" !== c.overflow && (l += parseFloat(c.borderTopWidth) || 0, m += parseFloat(c.borderLeftWidth) || 0), k = c;
        return ("relative" === k.position || "static" === k.position) && (l += i.offsetTop, m += i.offsetLeft), f.offset.supportsFixedPosition && "fixed" === k.position && (l += Math.max(h.scrollTop, i.scrollTop), m += Math.max(h.scrollLeft, i.scrollLeft)), {
            "top": l,
            "left": m
        }
    }, f.offset = {
        "initialize": function () {
            var d, e, h, a = c.body, b = c.createElement("div"), i = parseFloat(f.css(a, "marginTop")) || 0,
                j = "<div style='position:absolute;top:0;left:0;margin:0;border:5px solid #000;padding:0;width:1px;height:1px;'><div></div></div><table style='position:absolute;top:0;left:0;margin:0;border:5px solid #000;padding:0;width:1px;height:1px;' cellpadding='0' cellspacing='0'><tr><td></td></tr></table>";
            f.extend(b.style, {
                "position": "absolute",
                "top": 0,
                "left": 0,
                "margin": 0,
                "border": 0,
                "width": "1px",
                "height": "1px",
                "visibility": "hidden"
            }), b.innerHTML = j, a.insertBefore(b, a.firstChild), d = b.firstChild, e = d.firstChild, h = d.nextSibling.firstChild.firstChild, this.doesNotAddBorder = 5 !== e.offsetTop, this.doesAddBorderForTableAndCells = 5 === h.offsetTop, e.style.position = "fixed", e.style.top = "20px", this.supportsFixedPosition = 20 === e.offsetTop || 15 === e.offsetTop, e.style.position = e.style.top = "", d.style.overflow = "hidden", d.style.position = "relative", this.subtractsBorderForOverflowNotVisible = -5 === e.offsetTop, this.doesNotIncludeMarginInBodyOffset = a.offsetTop !== i, a.removeChild(b), f.offset.initialize = f.noop
        }, "bodyOffset": function (a) {
            var b = a.offsetTop, c = a.offsetLeft;
            return f.offset.initialize(), f.offset.doesNotIncludeMarginInBodyOffset && (b += parseFloat(f.css(a, "marginTop")) || 0, c += parseFloat(f.css(a, "marginLeft")) || 0), {
                "top": b,
                "left": c
            }
        }, "setOffset": function (a, b, c) {
            var d = f.css(a, "position");
            "static" === d && (a.style.position = "relative");
            var m, n, e = f(a), g = e.offset(), h = f.css(a, "top"), i = f.css(a, "left"),
                j = ("absolute" === d || "fixed" === d) && f.inArray("auto", [h, i]) > -1, k = {}, l = {};
            j ? (l = e.position(), m = l.top, n = l.left) : (m = parseFloat(h) || 0, n = parseFloat(i) || 0), f.isFunction(b) && (b = b.call(a, c, g)), null != b.top && (k.top = b.top - g.top + m), null != b.left && (k.left = b.left - g.left + n), "using" in b ? b.using.call(a, k) : e.css(k)
        }
    }, f.fn.extend({
        "position": function () {
            if (!this[0]) return null;
            var a = this[0], b = this.offsetParent(), c = this.offset(),
                d = tc.test(b[0].nodeName) ? {"top": 0, "left": 0} : b.offset();
            return c.top -= parseFloat(f.css(a, "marginTop")) || 0, c.left -= parseFloat(f.css(a, "marginLeft")) || 0, d.top += parseFloat(f.css(b[0], "borderTopWidth")) || 0, d.left += parseFloat(f.css(b[0], "borderLeftWidth")) || 0, {
                "top": c.top - d.top,
                "left": c.left - d.left
            }
        }, "offsetParent": function () {
            return this.map(function () {
                for (var a = this.offsetParent || c.body; a && !tc.test(a.nodeName) && "static" === f.css(a, "position");) a = a.offsetParent;
                return a
            })
        }
    }), f.each(["Left", "Top"], function (a, c) {
        var d = "scroll" + c;
        f.fn[d] = function (c) {
            var e, g;
            return c === b ? (e = this[0]) ? (g = uc(e), g ? "pageXOffset" in g ? g[a ? "pageYOffset" : "pageXOffset"] : f.support.boxModel && g.document.documentElement[d] || g.document.body[d] : e[d]) : null : this.each(function () {
                g = uc(this), g ? g.scrollTo(a ? f(g).scrollLeft() : c, a ? c : f(g).scrollTop()) : this[d] = c
            })
        }
    }), f.each(["Height", "Width"], function (a, c) {
        var d = c.toLowerCase();
        f.fn["inner" + c] = function () {
            var a = this[0];
            return a && a.style ? parseFloat(f.css(a, d, "padding")) : null
        }, f.fn["outer" + c] = function (a) {
            var b = this[0];
            return b && b.style ? parseFloat(f.css(b, d, a ? "margin" : "border")) : null
        }, f.fn[d] = function (a) {
            var e = this[0];
            if (!e) return null == a ? null : this;
            if (f.isFunction(a)) return this.each(function (b) {
                var c = f(this);
                c[d](a.call(this, b, c[d]()))
            });
            if (f.isWindow(e)) {
                var g = e.document.documentElement["client" + c], h = e.document.body;
                return "CSS1Compat" === e.document.compatMode && g || h && h["client" + c] || g
            }
            if (9 === e.nodeType) return Math.max(e.documentElement["client" + c], e.body["scroll" + c], e.documentElement["scroll" + c], e.body["offset" + c], e.documentElement["offset" + c]);
            if (a === b) {
                var i = f.css(e, d), j = parseFloat(i);
                return f.isNaN(j) ? i : j
            }
            return this.css(d, "string" == typeof a ? a : a + "px")
        }
    }), a.jQuery = a.$ = f
}(window);
/* jdf-1.0.0/ base.js Date:2017-10-26 22:18:26 */
if (!function (a, b) {
        function c(a) {
            return function (b) {
                return {}.toString.call(b) == "[object " + a + "]"
            }
        }

        function d() {
            return A++
        }

        function e(a) {
            return a.match(D)[0]
        }

        function f(a) {
            for (a = a.replace(E, "/"); a.match(F);) a = a.replace(F, "/");
            return a = a.replace(G, "$1/")
        }

        function g(a) {
            var b = a.length - 1, c = a.charAt(b);
            return "#" === c ? a.substring(0, b) : ".js" === a.substring(b - 2) || a.indexOf("?") > 0 || ".css" === a.substring(b - 3) || "/" === c ? a : a + ".js"
        }

        function h(a) {
            var b = v.alias;
            return b && x(b[a]) ? b[a] : a
        }

        function i(a) {
            var c, b = v.paths;
            return b && (c = a.match(H)) && x(b[c[1]]) && (a = b[c[1]] + c[2]), a
        }

        function j(a) {
            var b = v.vars;
            return b && a.indexOf("{") > -1 && (a = a.replace(I, function (a, c) {
                return x(b[c]) ? b[c] : a
            })), a
        }

        function k(a) {
            var b = v.map, c = a;
            if (b) for (var d = 0, e = b.length; e > d; d++) {
                var f = b[d];
                if (c = z(f) ? f(a) || a : a.replace(f[0], f[1]), c !== a) break
            }
            return c
        }

        function l(a, b) {
            var c, d = a.charAt(0);
            if (J.test(a)) c = a; else if ("." === d) c = f((b ? e(b) : v.cwd) + a); else if ("/" === d) {
                var g = v.cwd.match(K);
                c = g ? g[0] + a.substring(1) : a
            } else c = v.base + a;
            return 0 === c.indexOf("//") && (c = ("https:" == location.protocol ? "https:" : "http:") + c), c
        }

        function m(a, b) {
            if (!a) return "";
            a = h(a), a = i(a), a = j(a), a = g(a);
            var c = l(a, b);
            return c = k(c)
        }

        function n(a) {
            return a.hasAttribute ? a.src : a.getAttribute("src", 4)
        }

        function o(a, b, c) {
            var d = S.test(a), e = L.createElement(d ? "link" : "script");
            if (c) {
                var f = z(c) ? c(a) : c;
                f && (e.charset = f)
            }
            p(e, b, d, a), d ? (e.rel = "stylesheet", e.href = a) : (e.async = !0, e.src = a), T = e, R ? Q.insertBefore(e, R) : Q.appendChild(e), T = null
        }

        function p(a, c, d, e) {
            function f() {
                a.onload = a.onerror = a.onreadystatechange = null, d || v.debug || Q.removeChild(a), a = null, c()
            }

            var g = "onload" in a;
            return !d || !V && g ? (g ? (a.onload = f, a.onerror = function () {
                C("error", {uri: e, node: a}), f()
            }) : a.onreadystatechange = function () {
                /loaded|complete/.test(a.readyState) && f()
            }, b) : (setTimeout(function () {
                q(a, c)
            }, 1), b)
        }

        function q(a, b) {
            var d, c = a.sheet;
            if (V) c && (d = !0); else if (c) try {
                c.cssRules && (d = !0)
            } catch (e) {
                "NS_ERROR_DOM_SECURITY_ERR" === e.name && (d = !0)
            }
            setTimeout(function () {
                d ? b() : q(a, b)
            }, 20)
        }

        function r() {
            if (T) return T;
            if (U && "interactive" === U.readyState) return U;
            for (var a = Q.getElementsByTagName("script"), b = a.length - 1; b >= 0; b--) {
                var c = a[b];
                if ("interactive" === c.readyState) return U = c
            }
        }

        function s(a) {
            var b = [];
            return a.replace(X, "").replace(W, function (a, c, d) {
                d && b.push(d)
            }), b
        }

        function t(a, b) {
            this.uri = a, this.dependencies = b || [], this.exports = null, this.status = 0, this._waitings = {}, this._remain = 0
        }

        if (!a.seajs) {
            var u = a.seajs = {version: "2.2.0"}, v = u.data = {}, w = c("Object"), x = c("String"),
                y = Array.isArray || c("Array"), z = c("Function"), A = 0, B = v.events = {};
            u.on = function (a, b) {
                var c = B[a] || (B[a] = []);
                return c.push(b), u
            }, u.off = function (a, b) {
                if (!a && !b) return B = v.events = {}, u;
                var c = B[a];
                if (c) if (b) for (var d = c.length - 1; d >= 0; d--) c[d] === b && c.splice(d, 1); else delete B[a];
                return u
            };
            var C = u.emit = function (a, b) {
                    var d, c = B[a];
                    if (c) for (c = c.slice(); d = c.shift();) d(b);
                    return u
                }, D = /[^?#]*\//, E = /\/\.\//g, F = /\/[^/]+\/\.\.\//, G = /([^:/])\/\//g, H = /^([^/:]+)(\/.+)$/,
                I = /{([^{]+)}/g, J = /^\/\/.|:\//, K = /^.*?\/\/.*?\//, L = document, M = e(L.URL), N = L.scripts,
                O = L.getElementById("seajsnode") || N[N.length - 1], P = e(n(O) || M);
            u.resolve = m;
            var T, U, Q = L.getElementsByTagName("head")[0] || L.documentElement, R = Q.getElementsByTagName("base")[0],
                S = /\.css(?:\?|$)/i, V = +navigator.userAgent.replace(/.*AppleWebKit\/(\d+)\..*/, "$1") < 536;
            u.request = o;
            var Z,
                W = /"(?:\\"|[^"])*"|'(?:\\'|[^'])*'|\/\*[\S\s]*?\*\/|\/(?:\\\/|[^\/\r\n])+\/(?=[^\/])|\/\/.*|\.\s*require|(?:^|[^$])\brequire\s*\(\s*(["'])(.+?)\1\s*\)/g,
                X = /\\\\/g, Y = u.cache = {}, $ = {}, _ = {}, ab = {},
                bb = t.STATUS = {FETCHING: 1, SAVED: 2, LOADING: 3, LOADED: 4, EXECUTING: 5, EXECUTED: 6};
            t.prototype.resolve = function () {
                for (var a = this, b = a.dependencies, c = [], d = 0, e = b.length; e > d; d++) c[d] = t.resolve(b[d], a.uri);
                return c
            }, t.prototype.load = function () {
                var a = this;
                if (!(a.status >= bb.LOADING)) {
                    a.status = bb.LOADING;
                    var c = a.resolve();
                    C("load", c);
                    for (var e, d = a._remain = c.length, f = 0; d > f; f++) e = t.get(c[f]), e.status < bb.LOADED ? e._waitings[a.uri] = (e._waitings[a.uri] || 0) + 1 : a._remain--;
                    if (0 === a._remain) return a.onload(), b;
                    var g = {};
                    for (f = 0; d > f; f++) e = Y[c[f]], e.status < bb.FETCHING ? e.fetch(g) : e.status === bb.SAVED && e.load();
                    for (var h in g) g.hasOwnProperty(h) && g[h]()
                }
            }, t.prototype.onload = function () {
                var a = this;
                a.status = bb.LOADED, a.callback && a.callback();
                var c, d, b = a._waitings;
                for (c in b) b.hasOwnProperty(c) && (d = Y[c], d._remain -= b[c], 0 === d._remain && d.onload());
                delete a._waitings, delete a._remain
            }, t.prototype.fetch = function (a) {
                function c() {
                    u.request(g.requestUri, g.onRequest, g.charset)
                }

                function d() {
                    delete $[h], _[h] = !0, Z && (t.save(f, Z), Z = null);
                    var a, b = ab[h];
                    for (delete ab[h]; a = b.shift();) a.load()
                }

                var e = this, f = e.uri;
                e.status = bb.FETCHING;
                var g = {uri: f};
                C("fetch", g);
                var h = g.requestUri || f;
                return !h || _[h] ? (e.load(), b) : $[h] ? (ab[h].push(e), b) : ($[h] = !0, ab[h] = [e], C("request", g = {
                    uri: f,
                    requestUri: h,
                    onRequest: d,
                    charset: v.charset
                }), g.requested || (a ? a[g.requestUri] = c : c()), b)
            }, t.prototype.exec = function () {
                function a(b) {
                    return t.get(a.resolve(b)).exec()
                }

                var c = this;
                if (c.status >= bb.EXECUTING) return c.exports;
                c.status = bb.EXECUTING;
                var e = c.uri;
                a.resolve = function (a) {
                    return t.resolve(a, e)
                }, a.async = function (b, c) {
                    return t.use(b, c, e + "_async_" + d()), a
                };
                var f = c.factory, g = z(f) ? f(a, c.exports = {}, c) : f;
                return g === b && (g = c.exports), delete c.factory, c.exports = g, c.status = bb.EXECUTED, C("exec", c), g
            }, t.resolve = function (a, b) {
                var c = {id: a, refUri: b};
                return C("resolve", c), c.uri || u.resolve(c.id, b)
            }, t.define = function (a, c, d) {
                var e = arguments.length;
                1 === e ? (d = a, a = b) : 2 === e && (d = c, y(a) ? (c = a, a = b) : c = b), !y(c) && z(d) && (c = s("" + d));
                var f = {id: a, uri: t.resolve(a), deps: c, factory: d};
                if (!f.uri && L.attachEvent) {
                    var g = r();
                    g && (f.uri = g.src)
                }
                C("define", f), f.uri ? t.save(f.uri, f) : Z = f
            }, t.save = function (a, b) {
                var c = t.get(a);
                c.status < bb.SAVED && (c.id = b.id || a, c.dependencies = b.deps || [], c.factory = b.factory, c.status = bb.SAVED)
            }, t.get = function (a, b) {
                return Y[a] || (Y[a] = new t(a, b))
            }, t.use = function (b, c, d) {
                var e = t.get(d, y(b) ? b : [b]);
                e.callback = function () {
                    for (var b = [], d = e.resolve(), f = 0, g = d.length; g > f; f++) b[f] = Y[d[f]].exec();
                    c && c.apply(a, b), delete e.callback
                }, e.load()
            }, t.preload = function (a) {
                var b = v.preload, c = b.length;
                c ? t.use(b, function () {
                    b.splice(0, c), t.preload(a)
                }, v.cwd + "_preload_" + d()) : a()
            }, u.use = function (a, b) {
                return t.preload(function () {
                    t.use(a, b, v.cwd + "_use_" + d())
                }), u
            }, t.define.cmd = {}, a.define = t.define, u.Module = t, v.fetchedList = _, v.cid = d, u.require = function (a) {
                var b = t.get(t.resolve(a));
                return b.status < bb.EXECUTING && b.exec(), b.exports
            };
            var cb = /^(.+?\/)(\?\?)?(seajs\/)+/;
            v.base = (P.match(cb) || ["", P])[1], v.dir = P, v.cwd = M, v.charset = "utf-8", v.preload = function () {
                var a = [], b = location.search.replace(/(seajs-\w+)(&|$)/g, "$1=1$2");
                return b += " " + L.cookie, b.replace(/(seajs-\w+)=1/g, function (b, c) {
                    a.push(c)
                }), a
            }(), u.config = function (a) {
                for (var b in a) {
                    var c = a[b], d = v[b];
                    if (d && w(d)) for (var e in c) d[e] = c[e]; else y(d) ? c = d.concat(c) : "base" === b && ("/" !== c.slice(-1) && (c += "/"), c = l(c)), v[b] = c
                }
                return C("config", a), u
            }
        }
    }(this), !function () {
        function a(a) {
            var b = a.length;
            if (!(2 > b)) {
                q.comboSyntax && (s = q.comboSyntax), q.comboMaxLength && (t = q.comboMaxLength), n = q.comboExcludes;
                for (var d = [], e = 0; b > e; e++) {
                    var f = a[e];
                    if (!r[f]) {
                        var h = o.get(f);
                        h.status < p && !l(f) && !m(f) && d.push(f)
                    }
                }
                d.length > 1 && g(c(d))
            }
        }

        function b(a) {
            a.requestUri = r[a.uri] || a.uri
        }

        function c(a) {
            return e(d(a))
        }

        function d(a) {
            for (var b = {__KEYS: []}, c = 0, d = a.length; d > c; c++) for (var e = a[c].replace("://", "__").split("/"), f = b, g = 0, h = e.length; h > g; g++) {
                var i = e[g];
                f[i] || (f[i] = {__KEYS: []}, f.__KEYS.push(i)), f = f[i]
            }
            return b
        }

        function e(a) {
            for (var b = [], c = a.__KEYS, d = 0, e = c.length; e > d; d++) {
                for (var g = c[d], h = g, i = a[g], j = i.__KEYS; 1 === j.length;) h += "/" + j[0], i = i[j[0]], j = i.__KEYS;
                j.length && b.push([h.replace("__", "://"), f(i)])
            }
            return b
        }

        function f(a) {
            for (var b = [], c = a.__KEYS, d = 0, e = c.length; e > d; d++) {
                var g = c[d], h = f(a[g]), i = h.length;
                if (i) for (var j = 0; i > j; j++) b.push(g + "/" + h[j]); else b.push(g)
            }
            return b
        }

        function g(a) {
            for (var b = 0, c = a.length; c > b; b++) for (var d = a[b], e = d[0] + "/", f = j(d[1]), g = 0, i = f.length; i > g; g++) h(e, f[g]);
            return r
        }

        function h(a, b) {
            var c = a + s[0] + b.join(s[1]), d = c.length > t;
            if (b.length > 1 && d) {
                var e = i(b, t - (a + s[0]).length);
                h(a, e[0]), h(a, e[1])
            } else {
                if (d) throw new Error("The combo url is too long: " + c);
                for (var f = 0, g = b.length; g > f; f++) r[a + b[f]] = c
            }
        }

        function i(a, b) {
            for (var c = s[1], d = a[0], e = 1, f = a.length; f > e; e++) if (d += c + a[e], d.length > b) return [a.splice(0, e), a]
        }

        function j(a) {
            for (var b = [], c = {}, d = 0, e = a.length; e > d; d++) {
                var f = a[d], g = k(f);
                g && (c[g] || (c[g] = [])).push(f)
            }
            for (var h in c) c.hasOwnProperty(h) && b.push(c[h]);
            return b
        }

        function k(a) {
            var b = a.lastIndexOf(".");
            return b >= 0 ? a.substring(b) : ""
        }

        function l(a) {
            return n ? n.test ? n.test(a) : n(a) : void 0
        }

        function m(a) {
            var b = q.comboSyntax || ["??", ","], c = b[0], d = b[1];
            return c && a.indexOf(c) > 0 || d && a.indexOf(d) > 0
        }

        var n, o = seajs.Module, p = o.STATUS.FETCHING, q = seajs.data, r = q.comboHash = {}, s = ["??", ","], t = 2e3;
        if (seajs.on("load", a), seajs.on("fetch", b), q.test) {
            var u = seajs.test || (seajs.test = {});
            u.uris2paths = c, u.paths2hash = g
        }
        define("seajs/seajs-combo/1.0.1/seajs-combo", [], {})
    }(), window.pageConfig = window.pageConfig || {}, "undefined" == typeof pageConfig.autoConfig && (pageConfig.autoConfig = !0), "undefined" == typeof pageConfig.preload && (pageConfig.preload = !0), pageConfig.jdfVersion || (pageConfig.jdfVersion = "1.0.0"), pageConfig.jdfBaseUri || (pageConfig.jdfBaseUri = ("https:" == document.location.protocol ? "https://" : "http://") + "misc.360buyimg.com/"), pageConfig.autoConfig) {
    var preloadArray = pageConfig.preload ? [pageConfig.jdfBaseUri + "jdf/" + pageConfig.jdfVersion + "/ui/ui/1.0.0/ui.js"] : [];
    var seajsConfig = {
        base: pageConfig.jdfBaseUri,
        alias: {"home/widget/mobile_pop": "//nfa.jd.com/loadFa.action?aid=0_0_8762"},
        map: [],
        preload: preloadArray,
        debug: 0
    };
    ("localhost" == location.hostname || /isdebug=.*\-1(\D|$)/.test(location.search)) && (seajsConfig.comboExcludes = /.*/), seajs.config(seajsConfig)
}
if (pageConfig.wideVersion = function () {
        return /isdebug=.*\-2(\D|$)/.test(location.search) ? !1 : /isdebug=.*\-3(\D|$)/.test(location.search) ? !0 : screen.width >= 1210 && pageConfig.compatible
    }(), pageConfig.wideVersion ? document.getElementsByTagName("html")[0].className = pageConfig.gridWideClass ? pageConfig.gridWideClass : "root61" : "string" == typeof pageConfig.gridNarClass && (document.getElementsByTagName("html")[0].className = pageConfig.gridNarClass), function () {
        var a = "";
        !pageConfig.jd_mac && navigator.userAgent.indexOf("Macintosh") > -1 && (pageConfig.jd_mac = !0, a += " jd_mac"), !pageConfig.jd_retina && window.devicePixelRatio && window.devicePixelRatio > 1 && (pageConfig.jd_retina = window.devicePixelRatio, a += " jd_retina"), document.getElementsByTagName("html")[0].className += a
    }(), pageConfig.FN_getDomain = function () {
        var a = location.hostname;
        var b = "jd.com";
        return /\byiyaojd.com\b/.test(a) ? b = "yiyaojd.com" : /jd.com/.test(a) ? b = "jd.com" : /jd360.hk/.test(a) ? b = "jd360.hk" : /jd.hk/.test(a) ? b = "jd.hk" : /360buy.com/.test(a) && (b = "360buy.com"), b
    }, /jd\.com|360buy\.com|jd\.hk|jd360\.hk/.test(location.hostname)) try {
    document.domain = pageConfig.FN_getDomain()
} catch (e) {
}
pageConfig.FN_GetImageDomain = function (a) {
    var b, a = String(a);
    switch (a.match(/(\d)$/)[1] % 5) {
        case 0:
            b = 10;
            break;
        case 1:
            b = 11;
            break;
        case 2:
            b = 12;
            break;
        case 3:
            b = 13;
            break;
        case 4:
            b = 14;
            break;
        default:
            b = 10
    }
    return "//img{0}.360buyimg.com/".replace("{0}", b)
}, pageConfig.FN_ImgError = function (a) {
    var b = a.getElementsByTagName("img");
    for (var c = 0; c < b.length; c++) b[c].onerror = function () {
        var a = "", b = this.getAttribute("data-img");
        if (b) {
            switch (b) {
                case"1":
                    a = "err-product";
                    break;
                case"2":
                    a = "err-poster";
                    break;
                case"3":
                    a = "err-price";
                    break;
                default:
                    return
            }
            this.src = "//misc.360buyimg.com/lib/img/e/blank.gif", this.className = a
        }
    }
}, pageConfig.FN_GetRandomData = function (a) {
    var d, b = 0, c = 0, e = [];
    for (var f = 0; f < a.length; f++) d = a[f].weight ? parseInt(a[f].weight) : 1, e[f] = [], e[f].push(b), b += d, e[f].push(b);
    c = Math.ceil(b * Math.random());
    for (var f = 0; f < e.length; f++) if (c > e[f][0] && c <= e[f][1]) return a[f]
};
var login = function () {
    return location.href = "https://passport.jd.com/new/login.aspx?ReturnUrl=" + escape(location.href).replace(/\//g, "%2F"), !1
};
var regist = function () {
    return location.href = "https://reg.jd.com/reg/person?ReturnUrl=" + escape(location.href), !1
};
var createCookie = function (a, b, c, d) {
    var d = d ? d : "/";
    if (c) {
        var e = new Date;
        e.setTime(e.getTime() + 24 * c * 60 * 60 * 1e3);
        var f = "; expires=" + e.toGMTString()
    } else var f = "";
    document.cookie = a + "=" + b + f + "; path=" + d
};
var readCookie = function (a) {
    var b = a + "=";
    var c = document.cookie.split(";");
    for (var d = 0; d < c.length; d++) {
        var e = c[d];
        for (; " " == e.charAt(0);) e = e.substring(1, e.length);
        if (0 == e.indexOf(b)) return e.substring(b.length, e.length)
    }
    return null
};
var addToFavorite = function () {
    var a = "//www.jd.com/";
    var b = "\u4eac\u4e1cJD.COM-\u7f51\u8d2d\u4e0a\u4eac\u4e1c\uff0c\u7701\u94b1\u53c8\u653e\u5fc3";
    document.all ? window.external.AddFavorite(a, b) : window.sidebar && window.sidebar.addPanel ? window.sidebar.addPanel(b, a, "") : alert("\u5bf9\u4e0d\u8d77\uff0c\u60a8\u7684\u6d4f\u89c8\u5668\u4e0d\u652f\u6301\u6b64\u64cd\u4f5c!\n\u8bf7\u60a8\u4f7f\u7528\u83dc\u5355\u680f\u6216Ctrl+D\u6536\u85cf\u672c\u7ad9\u3002"), createCookie("_fv", "1", 30, "/;domain=jd.com")
};
pageConfig.getHashProbability = function (a, b) {
    var c = function (a) {
        for (var b = 0, c = 0; c < a.length; c++) b = (b << 5) - b + a.charCodeAt(c), b &= b;
        return b
    };
    return Math.abs(c(a)) % b
}, /isdebug=.*\-1(\D|$)/.test(location.search) && !function () {
    function a() {
        var a = document.getElementsByTagName("link");
        var b = null, c = null;
        for (var d = 0; d < a.length; d++) {
            var e = a[d];
            if (e) {
                var f = e.getAttribute("href");
                if (f) {
                    var g = f.indexOf("??");
                    var h = [];
                    var i = "";
                    if (-1 != g && (c = document.createDocumentFragment(), h = f.substring(g + 2).split(","), i = f.substring(0, g), h.length)) {
                        for (var j = 0, k = h.length; k > j; j++) h[j].replace(/ /g) && (b = document.createElement("link"), b.type = "text/css", b.rel = "stylesheet", b.href = i + h[j], c.appendChild(b), d++);
                        e.parentNode.insertBefore(c, e), e.parentNode.removeChild(e), d--
                    }
                }
            }
        }
    }

    var b = setInterval(function () {
        document.body && (clearInterval(b), a())
    }, 10)
}(), pageConfig.insertStyles = function (a) {
    var b = document, c = b.getElementsByTagName("head"), d = b.createElement("style"), e = b.createElement("link");
    if (/\.css$/.test(a)) e.rel = "stylesheet", e.type = "text/css", e.href = a, c.length ? c[0].appendChild(e) : b.documentElement.appendChild(e); else {
        if (d.setAttribute("type", "text/css"), d.styleSheet) d.styleSheet.cssText = a; else {
            var f = b.createTextNode(a);
            d.appendChild(f)
        }
        c.length && c[0].appendChild(d)
    }
}, function () {
    function a() {
        if ("undefined" == typeof getJdEid) {
            var a = document.createElement("script");
            a.src = "//payrisk.jd.com/js/td.js", document.body.appendChild(a)
        }
    }

    window.addEventListener ? window.addEventListener("load", function () {
        a()
    }, !1) : window.attachEvent("load", function () {
        a()
    })
}();