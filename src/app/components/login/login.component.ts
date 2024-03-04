import { Component } from '@angular/core';
import { AuthService } from '../../services/auth.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrl: './login.component.css'
})
export class LoginComponent {
  email: string = '';
  password: string = '';

  constructor(private authService: AuthService) {}

  login() {
    
    if (this.email && this.password) {
      this.authService.login({ email: this.email, password: this.password })
        .subscribe(
          (response) => {
            console.log('Bejelentkezés sikeres!', response);

          },
          (error) => {
            console.error('Bejelentkezés sikertelen!', error)
          }
        );
    } else {
      console.error('Az email és a jelszó mezők kitöltése kötelező!');
    }
  }
}
