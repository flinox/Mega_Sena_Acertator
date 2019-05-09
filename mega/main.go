package main
        
import (
    "fmt"
	"math/rand"
	"time"
)

func GeraNumero() {
    min := 1
	max := 60
	time.Sleep(3000 * time.Millisecond)	
	rand.Seed(time.Now().UnixNano())
    fmt.Println(rand.Intn(max - min) + min)
}
        
func main() {

	for i := 1; i < 8; i++ {
		GeraNumero()
	}

}