package uz.customs.customsprice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import uz.customs.customsprice.entity.InitialDecision.Log;

import java.util.List;

@Repository
public interface LogRepository extends JpaRepository<Log, String> {

    @Modifying
    @Query(value = "SELECT\n" +
            "    count(*)\n" +
            "FROM\n" +
            "    log l\n" +
            "WHERE\n" +
            "    l.ISDELETED=0\n" +
            "AND l.UPDTIME BETWEEN CURRENT_TIMESTAMP - 30 minutes AND CURRENT_TIMESTAMP", nativeQuery = true)
    Integer activeCount();

    @Modifying
    @Query(value = "SELECT \n" +
            "    count(*) as user_count\n" +
            "FROM \n" +
            "    log l \n" +
            "WHERE \n" +
            "    l.ISDELETED = 0", nativeQuery = true)
    Integer countUser();

    List<Log> findByIp(String ip);

}
