class FormContextNullException implements Exception {
    String? message;
    FormContextNullException(){
        this.message = "Form context is null";
    }
}


