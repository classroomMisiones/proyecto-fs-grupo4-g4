import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  myForm: FormGroup;

  constructor(private fb:FormBuilder, private router:Router) {
    this.myForm = this.fb.group({
      usuario: ['', [Validators.required, Validators.email]],
      password: ['', [Validators.required, Validators.minLength(8)]]
    });
  }

  ngOnInit(): void {
  }

  login(){
//    console.log(this.myForm.value);
      this.router.navigateByUrl("/Dash");
  }

  fnHaciaDash(){
//    this.router.navigateByUrl("/Dash");
  } 

}
