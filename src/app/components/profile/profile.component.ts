import { Component } from '@angular/core';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrl: './profile.component.css'
})
export class ProfileComponent {
  username: string = 'johndoe';
  email: string = 'johndoe@example.com';

  editedUsername: string = '';
  editedEmail: string = '';
  isEditProfileModalOpen: boolean = false;

  editProfile() {
    this.isEditProfileModalOpen = true;
    this.editedUsername = this.username;
    this.editedEmail = this.email;
  }

  closeEditProfileModal() {
    this.isEditProfileModalOpen = false;
  }

  saveChanges() {
    this.username = this.editedUsername;
    this.email = this.editedEmail;
    this.isEditProfileModalOpen = false;
  }

  logout() {
  
  }
}
