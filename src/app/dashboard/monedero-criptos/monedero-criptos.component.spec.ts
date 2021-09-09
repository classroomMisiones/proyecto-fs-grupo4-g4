import { ComponentFixture, TestBed } from '@angular/core/testing';

import { MonederoCriptosComponent } from './monedero-criptos.component';

describe('MonederoCriptosComponent', () => {
  let component: MonederoCriptosComponent;
  let fixture: ComponentFixture<MonederoCriptosComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ MonederoCriptosComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(MonederoCriptosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
