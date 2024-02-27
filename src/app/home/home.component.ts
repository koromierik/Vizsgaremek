import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {
  movies = [
    { title: 'Film 1', imageUrl: 'assets/kep1.webp' },
    { title: 'Film 2', imageUrl: 'assets/kep1.webp' },
    { title: 'Film 3', imageUrl: 'assets/kep1.webp' },
    { title: 'Film 4', imageUrl: 'assets/kep1.webp' },
    { title: 'Film 5', imageUrl: 'assets/kep1.webp' },
    { title: 'Film 6', imageUrl: 'assets/kep1.webp' },
    { title: 'Film 7', imageUrl: 'assets/kep1.webp' },
    { title: 'Film 8', imageUrl: 'assets/kep1.webp' },
    

  ];

  showShadow: boolean = false;
}
