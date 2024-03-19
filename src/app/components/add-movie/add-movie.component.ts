import { Component } from '@angular/core';
import { MovieService } from '../../services/movie.service';


  @Component({
    selector: 'app-add-movie',
    templateUrl: './add-movie.component.html',
    styleUrl: './add-movie.component.css'
  })
  export class AddMovieComponent {
    title: string = '';
    releaseYear: number = 0;
    description: string = '';
    review: string = '';
    updateTitle: string = '';
    updateReleaseYear: number = 0;
    updateDescription: string = '';
    deleteId: number = 0;
  
    constructor(private movieService: MovieService) { }
  
    addMovie(): void {
      if (this.title && this.releaseYear && this.description) {
        this.movieService.addMovie(this.title, this.releaseYear, this.description, this.review).subscribe({
          next: () => {
            console.log('Film hozzáadva!');
            alert('Film hozzáadva!');
            this.resetForm();
          },
          error: (error) => {
            console.error('Hiba történt a film hozzáadása során:', error);
            alert('Hiba történt a film hozzáadása során!');
          }
        });
      }
    }
  
    
    updateMovie(): void {
      if (this.updateTitle && this.updateReleaseYear && this.updateDescription) {
        this.movieService.updateMovie(this.deleteId, this.updateTitle, this.updateReleaseYear, this.updateDescription, this.review).subscribe({
          next: () => {
            console.log('Film frissítve!');
            alert('Film frissítve!');
            this.resetUpdateForm();
          },
          error: (error) => {
            console.error('Hiba történt a film frissítése során:', error);
            alert('Hiba történt a film frissítése során!');
          }
        });
      }
    }
  
    deleteMovie(): void {
      if (this.deleteId) {
        this.movieService.deleteMovie(this.deleteId).subscribe({
          next: () => {
            console.log('Film törölve!');
            alert('Film törölve!');
            this.resetDeleteForm();
          },
          error: (error) => {
            console.error('Hiba történt a film törlése során:', error);
            alert('Hiba történt a film törlése során!');
          }
        });
      }
    }
    private resetForm(): void {
      this.title = '';
      this.releaseYear = 0;
      this.description = '';
      this.review = '';
    }
  
    private resetUpdateForm(): void {
      this.updateTitle = '';
      this.updateReleaseYear = 0;
      this.updateDescription = '';
    }
  
    private resetDeleteForm(): void {
      this.deleteId = 0;
    }
  }