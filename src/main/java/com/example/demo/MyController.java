package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@Controller
public class MyController {

    ArrayList<Person> personList = new ArrayList<>();
    ArrayList<Petition> petitionList = new ArrayList<>();

    int runningPetitionId;

    int petitionBeingSigned;

    ArrayList<Petition> queryOutput = new ArrayList<>();

    @RequestMapping(value = "/start", method = RequestMethod.GET)
    public String sign(Model model) {
             String test = "Testing 1 2 3";
              model.addAttribute("test", test);
              return "createPetition";
    }

    @RequestMapping(value = "/signPetition", method = RequestMethod.POST)
    public String signPetition(Person person) {
        System.out.println("Name= " + person.getName());
        System.out.println("Email= " + person.getEmail());

        personList.add(person);
        return "signPetition";
    }

    @RequestMapping(value = "/createPetition", method = RequestMethod.POST)
    public String createPetition(Petition petition) {
        System.out.println("Title= " + petition.getTitle());
        System.out.println("Description= " + petition.getDescription());
        petition.setId(runningPetitionId++);
        petitionList.add(petition);
        return "createPetition";
    }

    @RequestMapping(value = "/showPetitions", method = RequestMethod.POST)
    public String showPetitions(ModelMap model) {
        //ModelAndView model = new ModelAndView("/showPetitions");
        model.put("petitionList", petitionList);
        System.out.println("Inside show Petitions");
        return "showPetitions";
    }

    @RequestMapping(value = "/returnHome", method = RequestMethod.POST)
    public String returnHome() {
        return "createPetition";
    }

    @RequestMapping(value = "/queryPetitions", method = RequestMethod.POST)
    public String queryPetitions(Petition queriedPetition, ModelMap model) {
        //ModelMap model = new ModelMap();
        System.out.println("Name= " + queriedPetition.getTitle());
        System.out.println("Email= " + queriedPetition.getDescription());
        System.out.println("About to query petitions" + queriedPetition.getTitle());
        String regex = ".*" + queriedPetition.getTitle() + ".*";
        queryOutput.clear();
        for (Petition petition : petitionList) {
            if (petition.title.matches(regex)) {
                System.out.println("Found a match here");
                queryOutput.add(petition);
            }
        }

        for (Petition petition : queryOutput) {
            System.out.println("This one is matched" + petition.getTitle());
        }

            model.put("queryOutput", queryOutput);
            return "showQueriedPetitions";
    }

    @RequestMapping(value = "/gotoQueryPetitions", method = RequestMethod.POST)
    public String gotoQueryPetitions() {
        return "queryPetitions";
    }

    @RequestMapping(value = "/signPetition", method = RequestMethod.GET)
    public String signPetition(@RequestParam int petitionId, ModelMap model) {
        Petition chosenPetition = new Petition();
        queryOutput.clear();
        for (Petition petition : petitionList) {
            if (petition.id == petitionId) {
                System.out.println("Found a match here");
                chosenPetition = petition;
            }
        }

        for (Petition petition : queryOutput) {
            System.out.println("This one is chosen" + chosenPetition.getTitle());
        }

        model.put("chosenPetition", chosenPetition);
        model.put("personList",chosenPetition.personList);
        return "signPetition";
    }
    @RequestMapping(value = "/processSignature", method = RequestMethod.POST)
    public String processSignature(Person person) {
        System.out.println("Title= " + person.getName());
        System.out.println("Description= " + person.getEmail());

        Petition chosenPetition = new Petition();

        for (Petition petition : petitionList) {
            if (petition.id == petitionBeingSigned) {
                System.out.println("Found a match here");
                chosenPetition = petition;
            }
        }

        chosenPetition.personList.add(person);
        return "createPetition";
    }

}
