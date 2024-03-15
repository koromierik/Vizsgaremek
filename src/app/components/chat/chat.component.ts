import { Component } from '@angular/core';

@Component({
  selector: 'app-chat',
  templateUrl: './chat.component.html',
  styleUrl: './chat.component.css'
})
export class ChatComponent {

    comment: string = ''; 
  
    constructor() { }
  
    submitComment() {
      
      console.log('Elküldött komment:', this.comment);
      this.comment = '';
    }
  }

