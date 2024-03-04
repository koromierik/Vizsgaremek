import { Component } from '@angular/core';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrl: './profile.component.css'
})
export class ProfileComponent {
  username: string = 'KoromiErik';
  email: string = '1erikmark@gmail.com';
  birthdate: string = '2000-01-01';

  editedUsername: string = '';
  editedEmail: string = '';
  editedBirthdate: string = '';
  isEditProfileModalOpen: boolean = false;

  editProfile() {
    this.isEditProfileModalOpen = true;
    this.editedUsername = this.username;
    this.editedEmail = this.email;
    this.editedBirthdate = this.birthdate;
  }

  closeEditProfileModal() {
    this.isEditProfileModalOpen = false;
  }

  saveChanges() {
    this.username = this.editedUsername;
    this.email = this.editedEmail;
    this.birthdate = this.editedBirthdate;
    this.isEditProfileModalOpen = false;
  }

  logout() {
  }
}