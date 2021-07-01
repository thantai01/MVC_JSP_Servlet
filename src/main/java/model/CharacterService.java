package model;

import java.util.ArrayList;
import java.util.List;

public class CharacterService implements ManagerService<Character>{
    private static List<Character> characterList;

    static {
        characterList = new ArrayList<>();
        characterList.add(new Character(101,"Mario","UNK","HN","http://4.bp.blogspot.com/-2AYsk5_rzGo/Um--xzDw-2I/AAAAAAAAAI4/EUySqeKdsuU/s1600/mario.jpg"));
        characterList.add(new Character(102,"Lego","UNK","HN","http://yeudochoi.com/wp-content/uploads/2019/05/%C4%90%E1%BB%93-ch%C6%A1i-lego.jpg"));
        characterList.add(new Character(103,"Contra","UNK","HN","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7y-NZRvzcH0TufTKZ1z_pN5vnaaLzshzOYXpQflzYpW2HeWQXY_lSG3r1CRtTItVyR7U&usqp=CAU"));
        characterList.add(new Character(104,"Buzz Light Year ","UNK","HN","https://www.kidinn.com/f/13778/137788803/beast-kingdom-disney-toy-story-buzz-lightyear-dinamic-heros.jpg"));
        characterList.add(new Character(105,"Woody","UNK","HN","https://upload.wikimedia.org/wikipedia/en/0/01/Sheriff_Woody.png"));
        characterList.add(new Character(106,"Tom","UNK","HN","https://banner2.cleanpng.com/20180326/wpw/kisspng-tom-cat-jerry-mouse-tom-and-jerry-cartoon-tom-jerry-5ab96b0e3c69e1.5469460515221010062475.jpg"));
        characterList.add(new Character(107,"Jerry","UNK","HN","https://i.pinimg.com/474x/0d/ca/47/0dca47a02e7734da470983294ee08a55.jpg"));

    }
    @Override
    public List<Character> displayList() {
        return characterList;
    }

    @Override
    public void add(Character character) {
        characterList.add(character);
    }

    @Override
    public Character findById(int id) {
        for(Character character: characterList) {
            if(character.getId() == id) {
                return character;
            }
        }
        return null;
    }

    @Override
    public void update(int id, Character character) {
        for(Character oldCharacter : characterList ) {
            if(oldCharacter.getId() == id) {
                oldCharacter = character;
            }
        }
    }

    @Override
    public void remove(int id) {
        characterList.removeIf(character -> character.getId() == id);
    }
}
