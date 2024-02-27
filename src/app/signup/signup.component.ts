import { Component } from '@angular/core';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrl: './signup.component.css'
})
export class SignupComponent {
      userData = {
      username: '',
      email: '',
      password: '',
      confirmPassword: ''
    };
  
    onSubmit() {
      if (this.userData.password !== this.userData.confirmPassword) {
        alert('A jelszavak nem egyeznek meg!');
        return;
      }

      console.log('A regisztráció sikeres!' + this.userData.username + '!');
    }
  }