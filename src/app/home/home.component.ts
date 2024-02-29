import { Component } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {
  movies = [
    { title: 'Film 1', imageUrl: 'assets/kep1.webp', description: 'Első film leírása' },
    { title: 'Film 2', imageUrl: 'assets/kep1.webp', description: 'Második film leírása' },
    { title: 'Film 3', imageUrl: 'assets/kep1.webp', description: 'Harmadik film leírása' },
    { title: 'Film 4', imageUrl: 'assets/kep1.webp', description: 'Negyedik film leírása' },
    { title: 'Film 5', imageUrl: 'assets/kep1.webp', description: 'Ötödik film leírása' },
    { title: 'Film 6', imageUrl: 'assets/kep1.webp', description: 'Hatodik film leírása' },
    { title: 'Film 7', imageUrl: 'assets/kep1.webp', description: 'Hetedik film leírása' },
    { title: 'Film 8', imageUrl: 'assets/kep1.webp', description: 'Nyolcadik film leírása'},
    
  ];

  showShadow: boolean = false;
}
