import { Component } from '@angular/core';
import { AuthService } from '../../services/auth.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrl: './signup.component.css'
})
export class SignupComponent {
  constructor(private auth: AuthService, private router: Router) { }
  email: any
  name: any
  password: any
  password_confirmation: any
  birthdate: Date = new Date()
  code: number = 0;
  isValidEmail(email: string): boolean {
    return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
  }
  isFormValid(): boolean {
    const isNameValid = !!this.name;
    const isEmailValid = this.isValidEmail(this.email);
    const isPasswordValid = !!this.password && this.password.length >= 8;
    const isPasswordConfirmationValid = this.password_confirmation === this.password;
    const isBirthdateValid = !!this.birthdate;

    return (
      isNameValid &&
      isEmailValid &&
      isPasswordValid &&
      isPasswordConfirmationValid &&
      isBirthdateValid
    );
  }
  signUp() {
    if (this.isFormValid()) {
      try {
        this.auth.createUser(this.email, this.name, this.password, this.password_confirmation, this.birthdate).subscribe((res)=>{
          console.log(res)
          if(res.success=true){
              this.router.navigate(['/verifyEmail'], {
                queryParams: {
                  email: this.email,
                  password: this.password
                }
              });
          }
        });
      } catch (error) {
        console.error('Regisztrációs hiba:', error);
        this.showErrorMessage('A megadott email cím már regisztrálva van.');
      }
    } else {
      console.error('Az űrlap nem érvényes. Kérjük, ellenőrizze a megadott információkat.');
    }
  }

showErrorMessage(message: string) {
    console.error(message);
}

showSuccessMessage() {
    console.log("Sikeres regisztráció!");
  }
}