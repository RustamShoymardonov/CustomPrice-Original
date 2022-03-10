package uz.customs.customsprice.controllers.api.persons;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import uz.customs.customsprice.controllers.api.helper.ResponseHandler;
import uz.customs.customsprice.entity.InitialDecision.Persons;
import uz.customs.customsprice.service.PersonsService;


@Controller
@RequestMapping("/personsrestapi")
public class ApiPersonsController {
    private final PersonsService personsService;

    public ApiPersonsController(PersonsService personsService) {
        this.personsService = personsService;
    }


    @PostMapping
    public ResponseEntity valuesave(@RequestBody Persons persons) {
        try {


            Persons personsPinGet = personsService.getByPin(persons.getPin());
            Persons personsTinGet = personsService.getByTin(persons.getTin());
            Persons personsEmailGet = personsService.getByeMail(persons.getEmail());

            if (personsPinGet == null && personsTinGet == null && personsEmailGet == null){
                personsService.savepersons(persons);
            }else {
                if (personsPinGet != null){
                    return ResponseHandler.generateResponse("Ushbu foydalanuvchi 'Pin' ma'lumoti mavjud, saqlash amalga oshirilmadi!", HttpStatus.BAD_REQUEST,
                            personsPinGet.getId());
                }
                if (personsTinGet != null){
                    return ResponseHandler.generateResponse("Ushbu foydalanuvchi 'Tin' ma'lumoti mavjud, saqlash amalga oshirilmadi!", HttpStatus.BAD_REQUEST,
                            personsTinGet.getId());
                } else
                return ResponseHandler.generateResponse("Ushbu foydalanuvchi 'Email' ma'lumoti mavjud, saqlash amalga oshirilmadi!", HttpStatus.BAD_REQUEST,
                        personsEmailGet.getId());
            }
            return ResponseHandler.generateResponse("Persons ma`lumotlari saqlandi!", HttpStatus.OK, persons);
        } catch (Exception e) {
            return ResponseHandler.generateResponse("Nomalum xatolik!", HttpStatus.BAD_REQUEST, persons.getId());
        }

    }
}