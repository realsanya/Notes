package app.model;

import app.entities.Note;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Model {
    private static Model instance = new Model();
    private List<Note> model;

    public static Model getInstance() {
        return instance;
    }

    private Model() {
        model = new ArrayList<>();
    }

    public void add(Note note) {
        model.add(note);
    }

    public List<String> list() {
        return model.stream().map(Note::getNote).collect(Collectors.toList());
    }
}
