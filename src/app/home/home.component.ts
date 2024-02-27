import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {
  movies = [
    { title: 'Film 1', imageUrl: 'path_to_image_1' },
    { title: 'Film 2', imageUrl: 'path_to_image_2' },
    { title: 'Film 3', imageUrl: 'path_to_image_3' },
    { title: 'Film 4', imageUrl: 'path_to_image_4' },
    { title: 'Film 5', imageUrl: 'path_to_image_5' },
    { title: 'Film 6', imageUrl: 'path_to_image_6' },
    { title: 'Film 7', imageUrl: 'path_to_image_7' },
    { title: 'Film 8', imageUrl: 'path_to_image_8' },
    
    // további filmek...

  ];

  showShadow: boolean = false;
}
