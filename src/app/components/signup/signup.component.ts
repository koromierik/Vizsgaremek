import { Component } from '@angular/core';
import { AuthService } from '../../services/auth.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrl: './signup.component.css'
})
export class SignupComponent {
  
  constructor(private authService: AuthService, private router: Router) { }

  name: any
  email: any
  password: any
  password_confirmation: any
  birthdate:  Date = new Date()

  isValidEmail(email: string): boolean {
    return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
  }

  isFormValid(): boolean {
    const isNameValid = !!this.name;
    const isEmailValid = this.isValidEmail(this.email);
    const isPasswordValid = !!this.password && this.password.length >= 8;
    const isPasswordConfirmationValid = this.password_confirmation === this.password;
    const isBirthDateValid = !!this.birthdate;
   
    return (
      isNameValid &&
      isEmailValid &&
      isPasswordValid &&
      isPasswordConfirmationValid &&
      isBirthDateValid
    );
  }
  signUp() {
    if (this.isFormValid()) {
      this.authService.createUser(this.email, this.name, this.password, this.password_confirmation, this.birthdate).subscribe(
        (response: any) => {
          const email = this.email;
          const password = this.password;
          const loginObj = { email, password };
          this.authService.login(loginObj).subscribe(
            (res: any) => {
              if (res) {
                this.handleSuccessfulLogin(res);
              } else {
                alert("Sikertelen bejelentkezés.");
              }
            },
            (error: any) => {
              console.error('Bejelentkezési hiba:', error);
              alert('Sikertelen bejelentkezés.');
            }
          );
        },
        (error: any) => {
          console.error('Regisztrációs hiba:', error);
          alert('A megadott emaillal már regisztrálva van.');
        }
      );
    } else {
      console.error('Az űrlap érvénytelen. Kérjük, ellenőrizze a megadott információkat.');
    }
  }
  
  handleSuccessfulLogin(response: any) {
    sessionStorage.setItem("token", response.data.token);
    sessionStorage.setItem("id", response.data.id);
    this.router.navigateByUrl("/home");
    alert("Sikeres bejelentkezés!");
  }
}  