import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {
  movies = [
    { id: 1 , title: 'A Wall Street farkasa', releaseDate:'2013', imageUrl: 'assets/thewolfofwallstreet2.jpg'},
    { id: 2 ,title: 'Avatar: A víz útja', releaseDate:'2022', imageUrl: 'assets/avatar.webp'},
    { id: 3 ,title: 'Logan', releaseDate:'2017', imageUrl: 'assets/logan.jpg'},
    { id: 4 ,title: 'Deadpool', releaseDate:'2016' ,imageUrl: 'assets/deadpool.jpg'},
    { id: 5 , title: 'Pókember: Nincs hazaút', releaseDate:'2021', imageUrl: 'assets/spiderman.avif'},
    { id: 6 , title: 'Wonder Woman 1984', releaseDate:'2020', imageUrl: 'assets/ww1984.jpg'},
    { id: 7 , title: 'Top Gun: Maverick', releaseDate:'2022', imageUrl: 'assets/topgun.jpg'},
    { id: 8 , title: 'Titanic', releaseDate:'1997', imageUrl: 'assets/titanic.jpg'},
    
  ];

  showShadow: boolean = false;
  constructor(private router: Router) {}

  goToMovieDetail(id: number) {
    this.router.navigate(['/movie', id]);
  }
}
