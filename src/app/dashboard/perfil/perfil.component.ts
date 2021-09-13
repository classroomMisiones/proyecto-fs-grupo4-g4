import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';


@Component({
  selector: 'app-perfil',
  templateUrl: './perfil.component.html',
  styleUrls: ['./perfil.component.css']
})
export class PerfilComponent implements OnInit {
  myForm: FormGroup;

  constructor(private fb:FormBuilder, private router: Router) { 
    this.myForm = this.fb.group({
      apellido: ['', [Validators.required]],
      nombre: ['', [Validators.required]],
      documento: ['',[Validators.required, Validators.maxLength(8)]],
      fechanac: ['',[Validators.required]],
      sexo: ['',[Validators.required]],
      calle: ['',[Validators.required]],
      nrocalle: ['',[Validators.required]],
      piso: ['',[]],
      dpto: ['',[]],
      localidad: ['',[]],
      provincia: ['',[]],
      correo: ['',[Validators.required, Validators.email]],
      password: ['',[Validators.required, Validators.minLength(8)]]
    });
  }

  ngOnInit(): void {
  }

  registrar(){
    //    console.log(this.myForm.value);
        alert("El perfil ha sido registrado");
        this.router.navigateByUrl("/Dash");
  }

}
