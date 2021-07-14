import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NavbarComponent } from './inicio/navbar/navbar.component';
import { FooterComponent } from './inicio/footer/footer.component';
import { QuienessomosComponent } from './inicio/quienessomos/quienessomos.component';
import { RegistracionComponent } from './inicio/registracion/registracion.component';
import { TransferenciaComponent } from './inicio/transferencia/transferencia.component';
import { PrincipalComponent } from './inicio/principal/principal.component';
import { AyudaComponent } from './inicio/ayuda/ayuda.component';

@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,
    FooterComponent,
    QuienessomosComponent,
    RegistracionComponent,
    TransferenciaComponent,
    PrincipalComponent,
    AyudaComponent,
    
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
