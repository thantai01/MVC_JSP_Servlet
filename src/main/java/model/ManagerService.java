package model;

import java.util.List;

public interface ManagerService<T> {
    List<T> displayList();
    void add(T t);
    T findById(int id);
    void update (int id,T t);
    void remove (int id);
}
