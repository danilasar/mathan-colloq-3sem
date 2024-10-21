package main
import (
    "encoding/json"
    "fmt"
    "os"
)

type Ticket struct {
    Number int    `json:"number"`
    Name   string `json:"name"`
}

func createTypFile(path string, content string) {
   // check if file exists then return
    _, e := os.Stat(path)
    if !os.IsNotExist(e) {
        return
    }
    fmt.Println("Creating file " + path + "...")
    file, err := os.Create(path)
    if err != nil {
        fmt.Println(err)
        os.Exit(3)
    }
    defer file.Close()
    file.WriteString(content)
}

func createTicket(ticket Ticket) {
    fmt.Println("Checking ticket №" + fmt.Sprintf("%d", ticket.Number) + "...")
    var ticketNumber = fmt.Sprintf("%02d", ticket.Number) // int to 2-symbol string with leading zero
    createTypFile("./proofs/" + ticketNumber + ".typ", "// " + ticket.Name)
    createTypFile("./wordings/" + ticketNumber + ".typ", "// " + ticket.Name)
}

func main() {
    tickets_str, err := os.ReadFile("tickets.json")
    if err != nil {
        fmt.Println(err)
        os.Exit(1)
    }
    var tickets []Ticket
    err = json.Unmarshal(tickets_str, &tickets)
    if err != nil {
        fmt.Println(err)
        os.Exit(2)
    }
    for i := range tickets {
        createTicket(tickets[i])
    }
    fmt.Println("Done.")
}
