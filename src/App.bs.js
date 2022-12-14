// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Doodles from "./Doodles.bs.js";
import LogoSvg from "./logo.svg";

import './App.css';
    import 'css-doodle';
;

var logo = LogoSvg;

function App$CssDoodle(Props) {
  var doodle = Props.doodle;
  return React.createElement("css-doodle", undefined, doodle);
}

var CssDoodle = {
  make: App$CssDoodle
};

function App$CssDoodleWrapper(Props) {
  var name = Props.name;
  var children = Props.children;
  return React.createElement("div", {
              className: "CssDoodle"
            }, children, React.createElement("small", undefined, name));
}

var CssDoodleWrapper = {
  make: App$CssDoodleWrapper
};

function App(Props) {
  return React.createElement("div", {
              className: "App"
            }, React.createElement("header", {
                  className: "App-header"
                }, React.createElement("img", {
                      className: "App-logo",
                      alt: "logo",
                      src: logo
                    }), React.createElement("p", undefined, "<Css-Doodle/> & Edit ", React.createElement("code", undefined, "src/App.js"), " and save to reload."), React.createElement("a", {
                      className: "App-link",
                      href: "https://reactjs.org",
                      rel: "noopener noreferrer",
                      target: "_blank"
                    }, "Learn React")), React.createElement("div", {
                  className: "App-body"
                }, React.createElement(App$CssDoodleWrapper, {
                      name: "「六弥太格子 ろくやたごうし」",
                      children: React.createElement(App$CssDoodle, {
                            doodle: Doodles.case1("#6e85a1")
                          })
                    }), React.createElement(App$CssDoodleWrapper, {
                      name: "「せいかい 青海波」",
                      children: React.createElement("div", {
                            style: {
                              height: "250px",
                              overflow: "hidden",
                              width: "250px"
                            }
                          }, React.createElement(App$CssDoodle, {
                                doodle: Doodles.case2
                              }))
                    }), React.createElement(App$CssDoodleWrapper, {
                      name: "「分銅繋 ぎふんどうつなぎ」",
                      children: React.createElement(App$CssDoodle, {
                            doodle: Doodles.case3
                          })
                    })));
}

var make = App;

export {
  logo ,
  CssDoodle ,
  CssDoodleWrapper ,
  make ,
}
/*  Not a pure module */
