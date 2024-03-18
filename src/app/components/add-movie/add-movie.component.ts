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
  updateTitle: string = '';
  updateReleaseYear: number = 0;
  deleteId: number = 0;

  constructor(private adminService: AdminService) { }

  addMovie(): void {
    if (this.title && this.releaseYear) {
      this.adminService.addMovie(this.title, this.releaseYear).subscribe(
        () => {
          console.log('Film hozzáadva!');
        },
        (error) => {
          console.error('Hiba történt a film hozzáadása során:', error);
        }
      );
    } else {
      console.error('Hiányzó adatok. Kérjük, töltse ki az összes mezőt.');
    }
  }

  updateMovie(): void {
    if (this.updateTitle && this.updateReleaseYear) {
      this.adminService.updateMovie(this.deleteId, this.updateTitle, this.updateReleaseYear).subscribe(
        () => {
          console.log('Film frissítve!');
        },
        (error) => {
          console.error('Hiba történt a film frissítése során:', error);
        }
      );
    } else {
      console.error('Hiányzó adatok. Kérjük, töltse ki az összes mezőt.');
    }
  }

  deleteMovie(): void {
    if (this.deleteId) {
      this.adminService.deleteMovie(this.deleteId).subscribe(
        () => {
          console.log('Film törölve!');
        },
        (error) => {
          console.error('Hiba történt a film törlése során:', error);
        }
      );
    } else {
      console.error('Hiányzó adatok. Kérjük, töltse ki az összes mezőt.');
    }
  }
}