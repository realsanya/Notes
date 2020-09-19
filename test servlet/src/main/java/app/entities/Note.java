package app.entities;

public class Note {
    private String note;

    public Note(){ }

    public Note(String note){
        this.note = note;
    }

    public String getNote(){
        return note;
    }

    public void setNote(String note){
        this.note = note;
    }

    @Override
    public String toString() {
        return note;
    }
}
