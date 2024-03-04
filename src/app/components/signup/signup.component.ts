import { Component } from '@angular/core';
import { AuthService } from '../../services/auth.service';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrl: './signup.component.css'
})
export class SignupComponent {
  name: string = '';
  email: string = '';
  password: string = '';
  password_confirmation: string = '';
  birthdate: string = '';

  constructor(private authService: AuthService) { }

  signUp() {
    const userData = {
      name: this.name,
      email: this.email,
      password: this.password,
      password_confirmation: this.password_confirmation,
      birthdate: this.birthdate
    };

    this.authService.register(userData)
      .subscribe(
        (response) => {
          console.log('Sikeres regisztráció!', response);
        
        },
        (error) => {
          console.error('Hiba történt a regisztráció során:', error);
        }
      );
  }
}