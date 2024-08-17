package fuzz

import (
	"testing"
)

func FuzzIsValidEmail(f *testing.F) {
	// Seed corpus with some basic email strings
	f.Add("example@example.com")
	f.Add("invalid-email")
	f.Add("user@domain.co.uk")

	// Fuzz target
	f.Fuzz(func(t *testing.T, email string) {
		// We are simply running the function to see if it crashes on any input
		isValid := IsValidEmail(email)

		// If the function returned true, verify that the email is in a valid format
		if isValid && !isProbablyValidEmail(email) {
			t.Errorf("IsValidEmail(%q) = true, but it is not a valid email", email)
		}
	})
}

// Helper function to check basic valid email format without using the main function
func isProbablyValidEmail(email string) bool {
	// Here you could use a different, simpler validation method to compare
	return len(email) > 3 && email[0] != '@' && email[len(email)-1] != '@'
}
