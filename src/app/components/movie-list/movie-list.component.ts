import { Component, OnInit } from '@angular/core';
import { AddMovieComponent } from '../add-movie/add-movie.component';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-movie-list',
  templateUrl: './movie-list.component.html',
  styleUrl: './movie-list.component.css'
})
  export class MovieListComponent implements OnInit {

    constructor(private modalService: NgbModal) { }
  
    ngOnInit(): void {
    }
  
    openAddMovieModal() {
      const modalRef = this.modalService.open(AddMovieComponent);
      modalRef.componentInstance.name = 'AddMovie';
    }
  
  }

