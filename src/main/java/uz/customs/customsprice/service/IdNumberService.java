package uz.customs.customsprice.service;

import uz.customs.customsprice.entity.InitialDecision.IdNumber;

import java.util.Optional;

public interface IdNumberService {
    IdNumber create(IdNumber idNumber, String type);

    IdNumber update(String id, IdNumber idNumber);

    Optional<IdNumber> getIdNumber(String idNumber);

    String getMaxNumber();

//    DataTablesOutput<Dep> getDedpListD(DataTablesInput input);


}
