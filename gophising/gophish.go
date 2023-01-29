package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
)

func main() {
	

}

func Get_site(){
		// Send a request to the webpage
		response, err := http.Get("https://www.example.com")
		if err != nil {
			fmt.Printf("Error: %s", err)
			return
		}
		defer response.Body.Close()
	
		// Read the HTML content from the response
		html, err := ioutil.ReadAll(response.Body)
		if err != nil {
			fmt.Printf("Error: %s", err)
			return
		}
	
		// Write the HTML content to a file
		err = ioutil.WriteFile("example.html", html, 0644)
		if err != nil {
			fmt.Printf("Error: %s", err)
			return
		}
}