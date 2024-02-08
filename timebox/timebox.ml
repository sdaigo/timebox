open Minttea
(* open Leaves
   open Spices *)

let ref = Riot.Ref.make ()

type model = { quit : bool }

let initial_model = { quit = false }
let init _ = Command.Seq [ Command.Set_timer (ref, 1.); Enter_alt_screen ]

exception Exit

let update event model =
  try
    if event = Event.KeyDown (Key "q") then raise Exit else (model, Command.Noop)
  with Exit -> ({ quit = true }, Command.Quit)

let view model = if model.quit then "Bye 🙌" else ""
let () = Minttea.app ~init ~update ~view () |> Minttea.start ~initial_model
