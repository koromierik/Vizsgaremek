import { Component } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {
  movies = [
    { title: 'Film 1', imageUrl: 'assets/thewolfofwallstreet2.jpg'},
    { title: 'Film 2', imageUrl: 'assets/avatar.webp'},
    { title: 'Film 3', imageUrl: 'assets/logan.jpg'},
    { title: 'Film 4', imageUrl: 'assets/deadpool.jpg'},
    { title: 'Film 5', imageUrl: 'assets/spiderman.avif'},
    { title: 'Film 6', imageUrl: 'assets/ww1984.jpg'},
    { title: 'Film 7', imageUrl: 'assets/topgun.jpg'},
    { title: 'Film 8', imageUrl: 'assets/titanic.jpg'},
    
  ];

  showShadow: boolean = false;
}
