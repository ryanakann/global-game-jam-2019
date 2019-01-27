using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public enum Location {
    Mountain,
    Cave,
    Lake,
    Forest,
    Castle,
    Home
}

public class Nightbringer : MonoBehaviour
{
    static List<Location> ALL_LOCATIONS = new List<Location>() {
        Location.Mountain,
        Location.Cave,
        Location.Lake,
        Location.Forest,
        Location.Cave,
        Location.Home
    };

    public static Nightbringer instance;

    public Dictionary<Location, bool> finished;

    public float fadeTime;
    public Image coverup;

    private void Awake() {
        if(instance == null) {
            instance = this;
        } else {
            Destroy(this);
        }
    }

    // Start is called before the first frame update
    void Start() {
        if(finished == null) {
            finished = new Dictionary<Location, bool>();
            foreach (Location key in ALL_LOCATIONS) {
                finished[key] = false;
            }

            finished[Location.Home] = true;
        }
    }

    // Update is called once per frame
    void Update() {
        
    }

    public void EndNight(Location loc) {
        finished[loc] = true;
        StartCoroutine(FadeToFungus(loc));
    }

    public void Cycleback() {
        bool done = true;
        foreach (Location key in ALL_LOCATIONS) {
            if(!finished[key]) {
                done = false;
            }
        }
        if(done) {
            //SceneManager.LoadScene("CREDITS");
        }
        StartCoroutine(FadeFromFungus());
    }

    IEnumerator FadeToFungus(Location loc) {
        float timecount = 0f;

        while(timecount < fadeTime) {
            yield return null;
            timecount += Time.deltaTime;
            coverup.color = new Color(0, 0, 0, timecount / fadeTime);
        }
        coverup.color = new Color(0, 0, 0, 1);

        //Call Fungus Here
    }

    IEnumerator FadeFromFungus() {

        //Place Player At Home Here.

        float timecount = 0f;

        while (timecount < fadeTime)
        {
            yield return null;
            timecount += Time.deltaTime;
            coverup.color = new Color(0, 0, 0, 1 - (timecount / fadeTime));
        }
        coverup.color = new Color(0, 0, 0, 0);
        PlayerInput.allowMovement = true;
    }
}
