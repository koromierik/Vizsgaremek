import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { HomeComponent } from './home/home.component';
import { AddMovieComponent } from './add-movie/add-movie.component';
import { MovieListComponent } from './movie-list/movie-list.component';
import { MovieRatingComponent } from './movie-rating/movie-rating.component';
import { NavComponent } from './nav/nav.component';
import { SignupComponent } from './signup/signup.component';
import { UserProfileComponent } from './user-profile/user-profile.component';
import { FooterComponent } from './footer/footer.component';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    AddMovieComponent,
    MovieListComponent,
    MovieRatingComponent,
    NavComponent,
    SignupComponent,
    UserProfileComponent,
    FooterComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    NgbModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
