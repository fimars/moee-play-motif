%%raw(`
    import './App.css';
    import 'css-doodle';
`)

@module("./logo.svg") external logo: string = "default"

module CssDoodle = {
  @react.component
  let make = (~doodle) => {
    ReactDOMRe.createDOMElementVariadic("css-doodle", [React.string(doodle)])
  }
}
module CssDoodleWrapper = {
  @react.component
  let make = (~name, ~children) => {
    <div className="CssDoodle">
      {children}
      <small> {React.string(name)} </small>
    </div>
  }
}

@react.component
let make = () => {
  <div className="App">
    <header className="App-header">
      <img src={logo} className="App-logo" alt="logo" />
      <p>
        {React.string("<Css-Doodle/> & Edit ")}
        <code> {React.string("src/App.js")} </code>
        {React.string(" and save to reload.")}
      </p>
      <a className="App-link" href="https://reactjs.org" target="_blank" rel="noopener noreferrer">
        {React.string("Learn React")}
      </a>
    </header>
    <div className="App-body">
      <CssDoodleWrapper name={"「六弥太格子 ろくやたごうし」"}>
        <CssDoodle doodle={Doodles.case1(~color="#6e85a1")} />
      </CssDoodleWrapper>
      <CssDoodleWrapper name={"「せいかい 青海波」"}>
        <div style={ReactDOM.Style.make(~width="250px", ~height="250px", ~overflow="hidden", ())}>
          <CssDoodle doodle={Doodles.case2} />
        </div>
      </CssDoodleWrapper>
      <CssDoodleWrapper name={"「分銅繋 ぎふんどうつなぎ」"}>
        <CssDoodle doodle={Doodles.case3} />
      </CssDoodleWrapper>
    </div>
  </div>
}
