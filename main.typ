#{
    let config = toml("config.toml")
    let tickets = json("tickets.json")
    for ticket in tickets {
        heading(ticket.name)
        let num = str(ticket.number)
        if num.len() == 1 {
            num = "0" + num
        }
        if config.wordings_enabled {    
            include "wordings/" + num + ".typ"
        }
        if config.proofs_enabled {
            include "proofs/" + num + ".typ"
        }
    }
}
