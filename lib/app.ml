let () =
  match ReactDOM.querySelector "#root" with
  | Some el ->
    let app = Index.makeProps () |> Index.make in
    let root = ReactDOM.Client.createRoot el in
    ReactDOM.Client.render root app
  | None -> Js.Console.error "Failed to start React: couldn't find the #root element"
;;
