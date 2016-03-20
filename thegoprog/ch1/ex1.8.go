package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
	"os"
	"strings"
)

func withPrefix(arg string) string {
	pref := "http://"
	if !strings.HasPrefix(arg, pref) {
		return pref + arg
	}
	return arg
}

func main() {
	for _, url := range os.Args[1:] {
		url = withPrefix(url)
		resp, err := http.Get(url)
		if err != nil {
			fmt.Fprintf(os.Stderr, "fetch: %v\n", err)
			os.Exit(1)
		}
		b, err := ioutil.ReadAll(resp.Body)
		status := resp.StatusCode
		resp.Body.Close()
		if err != nil {
			fmt.Fprintf(os.Stderr, "fetch: reading %s: %v\n", url, err)
			os.Exit(1)
		}
		fmt.Println(status)
		fmt.Printf("%s", b)
	}
}
