  import { Component } from '@angular/core';
  import { AdminService } from '../../services/admin.service';


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
  
    constructor(private adminService: AdminService) { }
  
    addMovie(): void {
      if (this.title && this.releaseYear && this.description && this.review) {
        this.adminService.addMovie(this.title, this.releaseYear, this.description, this.review).subscribe(
          () => {
            console.log('Film hozzáadva!');
            alert('Film hozzáadva!');
            this.resetForm();
          },
          (error) => {
            console.error('Hiba történt a film hozzáadása során:', error);
            alert('Hiba történt a film hozzáadása során!');
          }
        );
      } else {
        console.error('Hiányzó adatok. Kérjük, töltse ki az összes mezőt.');
        alert('Hiányzó adatok. Kérjük, töltse ki az összes mezőt.');
      }
    }
  
    updateMovie(): void {
      if (this.updateTitle && this.updateReleaseYear && this.updateDescription) {
        this.adminService.updateMovie(this.deleteId, this.updateTitle, this.updateReleaseYear, this.updateDescription, this.review).subscribe(
          () => {
            console.log('Film frissítve!');
            alert('Film frissítve!');
            this.resetUpdateForm();
          },
          (error) => {
            console.error('Hiba történt a film frissítése során:', error);
            alert('Hiba történt a film frissítése során!');
          }
        );
      } else {
        console.error('Hiányzó adatok. Kérjük, töltse ki az összes mezőt.');
        alert('Hiányzó adatok. Kérjük, töltse ki az összes mezőt.');
      }
    }
  
    deleteMovie(): void {
      if (this.deleteId) {
        this.adminService.deleteMovie(this.deleteId).subscribe(
          () => {
            console.log('Film törölve!');
            alert('Film törölve!');
            this.resetDeleteForm();
          },
          (error) => {
            console.error('Hiba történt a film törlése során:', error);
            alert('Hiba történt a film törlése során!');
          }
        );
      } else {
        console.error('Hiányzó adatok. Kérjük, töltse ki az összes mezőt.');
        alert('Hiányzó adatok. Kérjük, töltse ki az összes mezőt.');
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