import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NavbarComponent } from './navbar/navbar.component';
import { FooterComponent } from './footer/footer.component';
import { HomeComponent } from './home/home.component';
import { Error404Component } from './error404/error404.component';
import { LoginComponent } from './dashboard/login/login.component';
import { RegistrarComponent } from './dashboard/registrar/registrar.component';
import { AyudaComponent } from './ayuda/ayuda.component';
import { TerminosComponent } from './terminos/terminos.component';

import { CotizacionComponent } from './dashboard/cotizacion/cotizacion.component';
import { NavbarDashComponent } from './dashboard/navbar-dash/navbar-dash.component';
import { DashComponent } from './dashboard/dash/dash.component';
import { MovimientosComponent } from './dashboard/movimientos/movimientos.component';
import { NavVerticalComponent } from './dashboard/nav-vertical/nav-vertical.component';
import { CotizacionVerticalComponent } from './dashboard/cotizacion-vertical/cotizacion-vertical.component';
import { MonederoCriptosComponent } from './dashboard/monedero-criptos/monedero-criptos.component';
import { MonderoPesoComponent } from './dashboard/mondero-peso/mondero-peso.component';

@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,
    FooterComponent,
    HomeComponent,
    Error404Component,
    LoginComponent,
    RegistrarComponent,
    AyudaComponent,
    TerminosComponent,
    
    CotizacionComponent,
         NavbarDashComponent,
         DashComponent,
         MovimientosComponent,
         NavVerticalComponent,
         CotizacionVerticalComponent,
         MonederoCriptosComponent,
         MonderoPesoComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }

