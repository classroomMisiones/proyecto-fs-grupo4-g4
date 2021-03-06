import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';

@Component({
  selector: 'app-registrar',
  templateUrl: './registrar.component.html',
  styleUrls: ['./registrar.component.css']
})
export class RegistrarComponent implements OnInit {

  myForm: FormGroup;

  constructor(private fb:FormBuilder, private router: Router) {
    this.myForm = this.fb.group({
      apellido: ['', [Validators.required]],
      nombre: ['', [Validators.required]],
      documento: ['',[Validators.required, Validators.maxLength(8)]],
      correo: ['',[Validators.required, Validators.email]],
      password: ['',[Validators.required, Validators.minLength(8)]]
    });
  }

  ngOnInit(): void {
  }

  login(){
//    console.log(this.myForm.value);
    alert("El usuario ha sido registrado");
    this.router.navigateByUrl("/");
  }

}
