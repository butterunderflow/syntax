@@jsxConfig({version: 3})

module FancyInput = {
  @react.component
  let make = React.forwardRef((~className=?, ~children, ref) =>
    <div>
      <input
        type_="text"
        ?className
        ref=?{Js.Nullable.toOption(ref)->Belt.Option.map(ReactDOM.Ref.domRef)}
      />
      children
    </div>
  )
}

@react.component
let make = () => {
  let input = React.useRef(Js.Nullable.null)

  <div> <FancyInput ref=input> {React.string("Click to focus")} </FancyInput> </div>
}

@@jsxConfig({version: 4, mode: "classic"})

module FancyInput = {
  @react.component
  let make = React.forwardRef((~className=?, ~children, ref) =>
    <div>
      <input
        type_="text"
        ?className
        ref=?{Js.Nullable.toOption(ref)->Belt.Option.map(ReactDOM.Ref.domRef)}
      />
      children
    </div>
  )
}

@react.component
let make = () => {
  let input = React.useRef(Js.Nullable.null)

  <div> <FancyInput ref=input> {React.string("Click to focus")} </FancyInput> </div>
}

@@jsxConfig({version: 4, mode: "automatic"})

module FancyInput = {
  @react.component
  let make = React.forwardRef((~className=?, ~children, ref) =>
    <div>
      <input
        type_="text"
        ?className
        ref=?{Js.Nullable.toOption(ref)->Belt.Option.map(ReactDOM.Ref.domRef)}
      />
      children
    </div>
  )
}

@react.component
let make = () => {
  let input = React.useRef(Js.Nullable.null)

  <div> <FancyInput ref=input> {React.string("Click to focus")} </FancyInput> </div>
}
