package main

import (
	"fmt"
	"net/http"
	"github.com/gorilla/mux"
	"github.com/sirupsen/logrus"
)

var log = logrus.New()

func helloHandler(w http.ResponseWriter, r *http.Request) {
	log.Info("Received request on /hello")
	w.WriteHeader(http.StatusOK)
	w.Write([]byte("Hello, World!"))
}

func main() {
	// Set log format
	log.SetFormatter(&logrus.JSONFormatter{})

	// Create a new router
	router := mux.NewRouter()

	// Define routes
	router.HandleFunc("/hello", helloHandler).Methods("GET")

	// Start the server
	port := 8080
	log.Infof("Server is running on port %d...", port)
	http.ListenAndServe(fmt.Sprintf(":%d", port), router)
}
