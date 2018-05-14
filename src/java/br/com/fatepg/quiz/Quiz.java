/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatepg.quiz;

import java.util.ArrayList;

public class Quiz {
    public static ArrayList<Questoes> teste  = new ArrayList<Questoes>();;
    private static ArrayList<Questoes> questoes = new ArrayList<Questoes>();
    private String user;
    private Double pontuacao;
    public int qtQuestoes = 10;

    public Quiz(){
        
    }
    public Quiz(String user, Double pontuacao){
        this.user = user;
        this.pontuacao = pontuacao;
        System.out.println(user);
        System.out.println(pontuacao);
    }
    
        
    public void inicializarQuestoes(){
        questoes.clear();
        questoes.add(new Questoes("img/Alex Kidd in Miracle World.png", "Alex Kidd in Miracle World", new String[]{"Alex Kidd in Miracle World", "Wonder Boy III", "Gunstar Heroes (USA)"}, "N"));
        questoes.add(new Questoes("img/Balloon Fight (USA).png", "Balloon Fight (USA)", new String[]{"Cabal (USA)", "Balloon Fight (USA)", "Kid Chameleon (USA, Europe)"}, "N"));
        questoes.add(new Questoes("img/Bomberman II (USA).png", "Bomberman II", new String[]{"Bomberman II", "Super Mario World (USA)", "Final Fight 3 (USA)"}, "N"));
        questoes.add(new Questoes("img/Cabal (USA).png", "Cabal", new String[]{"Cabal", "Streets of Rage 2 (USA)", "Salamander (Japan)"}, "N"));
        questoes.add(new Questoes("img/Castlevania (USA).png", "Castlevania", new String[]{"Sonic The Hedgehog (USA, Europe)", "Castlevania", "Chrono Trigger (USA)"}, "N"));
        questoes.add(new Questoes("img/Chrono Trigger (USA).png", "Chrono Trigger (USA)", new String[]{"Alex Kidd in Miracle World", "Wonder Boy III", "Chrono Trigger (USA)"}, "N"));
        questoes.add(new Questoes("img/Contra (USA).png", "Contra (USA)", new String[]{"Kirby Super Star (USA)", "Punch-Out!! (USA)", "Contra (USA)"}, "N"));
        questoes.add(new Questoes("img/Donkey Kong Country (Europe) (En,Fr,De).png", "Donkey Kong Country", new String[]{"Sonic The Hedgehog (USA, Europe)", "Donkey Kong Country", "Kid Chameleon (USA, Europe)"}, "N"));
        questoes.add(new Questoes("img/Donkey Kong Country 2 - Diddy's Kong Quest (Europe) (En,Fr) (Rev 1).png", "Donkey Kong Country 2", new String[]{"Donkey Kong Country 2", "Gunstar Heroes (USA)", "Kirby Super Star (USA)"}, "N"));
        questoes.add(new Questoes("img/Final Fight 3 (USA).png", "Final Fight 3", new String[]{"Final Fight 3", "Gunstar Heroes", "Cabal"}, "N"));
        questoes.add(new Questoes("img/Golden Axe II (World).png", "Golden Axe II", new String[]{"Castlevania (USA)", "Golden Axe II", "Alex Kidd in Miracle World"}, "N"));
        questoes.add(new Questoes("img/Gunstar Heroes (USA).png", "Gunstar Heroes", new String[]{"Gunstar Heroes", "Ninja Gaiden (USA)", "Super Street Fighter II (USA)"}, "N"));
        questoes.add(new Questoes("img/Kid Chameleon (USA, Europe).png", "Kid Chameleon", new String[]{"Alex Kidd in Miracle World", "Wonder Boy III", "Kid Chameleon"}, "N"));
        questoes.add(new Questoes("img/Kirby Super Star (USA).png", "Kirby Super Star", new String[]{"Kirby Super Star", "Bomberman II", "ToeJam & Earl (World)"}, "N"));
        questoes.add(new Questoes("img/Legend of Zelda, The - A Link to the Past (France).png", "Legend of Zelda, The - A Link to the Past", new String[]{"Bomberman II (USA)", "Legend of Zelda, The - A Link to the Past", "Super Mario World (USA)"}, "N"));
        questoes.add(new Questoes("img/Mega Man 2 (USA).png", "Mega Man 2", new String[]{"Super Metroid", "Mega Man 2", "Balloon Fight"}, "N"));
        questoes.add(new Questoes("img/Ninja Gaiden (USA).png", "Ninja Gaiden", new String[]{"Ninja Gaiden", "Castlevania", "Golden Axe II"}, "N"));
        questoes.add(new Questoes("img/Punch-Out!! (USA).png", "Punch-Out!!", new String[]{"Punch-Out!!", "ToeJam & Earl", "Streets of Rage 2"}, "N"));
        questoes.add(new Questoes("img/Salamander (Japan).png", "Salamander", new String[]{"Salamander", "Alex Kidd in Miracle World", "Kid Chameleon"}, "N"));
        questoes.add(new Questoes("img/Sonic The Hedgehog (USA, Europe).png", "Sonic The Hedgehog", new String[]{"Streets of Rage 2", "Sonic The Hedgehog", "Super Mario Bros"}, "N"));
        questoes.add(new Questoes("img/Streets of Rage 2 (USA).png", "Streets of Rage 2", new String[]{"Streets of Rage 2", "/Gunstar Heroes", "Super Mario Bros."}, "N"));
        questoes.add(new Questoes("img/Super Mario Bros. (World).png", "Super Mario Bros.", new String[]{"Super Mario Bros.", "Super Mario Bros. 3", "Mega Man 2"}, "N"));
        questoes.add(new Questoes("img/Super Mario Bros. 3 (USA).png", "Super Mario Bros. 3", new String[]{"Legend of Zelda, The - A Link to the Past", "Sonic The Hedgehog", "Super Mario Bros. 3"}, "N"));
        questoes.add(new Questoes("img/Super Mario Kart (Europe).png", "Super Mario Kart", new String[]{"Super Mario Kart", "Super Mario World", "Wonder Boy III"}, "N"));
        questoes.add(new Questoes("img/Super Mario World (USA).png", "Super Mario World", new String[]{"Gunstar Heroes", "Super Mario World", "Contra"}, "N"));
        questoes.add(new Questoes("img/Super Metroid (Europe) (En,Fr,De).png", "Super Metroid", new String[]{"Mega Man 2", "Super Metroid", "Ninja Gaiden"}, "N"));
        questoes.add(new Questoes("img/Super Street Fighter II (USA).png", "Super Street Fighter II", new String[]{"Punch-Out!!", "Ultimate Mortal Kombat 3", "Super Street Fighter II"}, "N"));
        questoes.add(new Questoes("img/ToeJam & Earl (World).png", "ToeJam & Earl", new String[]{"ToeJam & Earl", "Chrono Trigger", "Ballon Fight"}, "N"));
        questoes.add(new Questoes("img/Ultimate Mortal Kombat 3 (USA).png", "Ultimate Mortal Kombat 3", new String[]{"Ballon Fight", "Super Street Fighter II", "Ultimate Mortal Kombat 3"}, "N"));
        questoes.add(new Questoes("img/Wonder Boy III.png", "Wonder Boy III", new String[]{"Wonder Boy III", "Alex Kidd in Miracle World", "Kid Chameleon"}, "N"));

    }
    
    public ArrayList<Questoes> getTeste(){
        //inicializarQuestoes();
        //if (teste.size()==0){
            teste.clear();
            do{
                int random = (int) (Math.random() * questoes.size());
                if(questoes.get(random).getIndicadorUso().equals("N")){
                    teste.add(questoes.get(random));
                    System.out.println(random + " teste: " +teste.size());
                    questoes.get(random).setIndicadorUso("S");
                }
            }while(teste.size()<getQtQuestoes());
        /*}
        else{
            System.out.println("Teste não está vazio");
            teste.clear();
        }*/
        return teste;
    }

    /**
     * @return the user
     */
    public String getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(String user) {
        this.user = user;
    }

    /**
     * @return the pontuacao
     */
    public Double getPontuacao() {
        return pontuacao;
    }

    /**
     * @param pontuacao the pontuacao to set
     */
    public void setPontuacao(Double pontuacao) {
        this.pontuacao = pontuacao;
    }

    /**
     * @return the qtQuestoes
     */
    public int getQtQuestoes() {
        return qtQuestoes;
    }
}
