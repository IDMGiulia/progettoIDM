package idm.validator;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import idm.beans.Candidato;

public class canValid implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return Candidato.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nome", "error.nome", "Il nome è richiesto");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "cognome", "error.cognome", "Il cognome è richiesto");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "error.email", "Email è richiesta");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "telefono", "error.telefono", "Il telefono è richiesto");
		
	}

}
