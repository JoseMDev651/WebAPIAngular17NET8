# MiApp

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 18.2.7.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The application will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via a platform of your choice. To use this command, you need to first add a package that implements end-to-end testing capabilities.

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI Overview and Command Reference](https://angular.dev/tools/cli) page.

## Needeed material
ng add @angular/material@17.3.3

## Proccess
src>app>Create folder Settings>Create file appsettings.ts (Archivo de configuración url app)
src>app>Create folder Models>Create file>Empleado.ts (Interface Empleado)
                            >Create file>ResponseAPI.ts (Interface isSuccess)
        >Create folder Servicios -- (Terminal)ng generate service Services/Empleado(For connection with our APIs)
        >Create folder Pages> -- (Terminal) ng g c Pages/Inicio --skip-tests (Component - Create page Inicio) 
                              -- (Terminal) ng g c Pages/Empleado --skip-tests (Component - Create page Empleado)
        >app.component.html (<router-outlet> Inicio <=> go from Inicio to Empleado - bidirectional)
        >app.routes.ts -> include paths
        >Inicio>inicio.component.ts (card,table,icon,buttons - angular material->usings and imports)
                                    class InicioComponent -> Conectarnos con los servicios.
        >Inicio>inicio.components.html (diseño de la UI)
        >Terminal ng serve --open
Empleado Page------
        empleado.component.ts -> material angular -> formularios: form field, button,form field
        empleado.component.html