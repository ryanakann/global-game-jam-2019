using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MusicManager : MonoBehaviour
{

    public AudioSource source1, source2;

    public float timeOfFade;

    bool isTrackOnePlaying;

    // Start is called before the first frame update
    void Start()
    {
        isTrackOnePlaying = false;
        source1.volume = 0f;
        source2.volume = 1f;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void PlayTrack(AudioClip clip) {
        if(isTrackOnePlaying) {
            source2.clip = clip;
        } else {
            source1.clip = clip;
        }
        StartCoroutine(CrossfadeTracks());
    }

    IEnumerator CrossfadeTracks() {
        float timeTracker = 0f;

        while(timeTracker < timeOfFade) {
            yield return null;
            timeTracker += Time.deltaTime;

            if(isTrackOnePlaying) {
                source1.volume = 1 - (timeTracker / timeOfFade);
                source2.volume = timeTracker / timeOfFade;
            } else {
                source1.volume = timeTracker / timeOfFade;
                source2.volume = 1 - (timeTracker / timeOfFade);
            }
        }

        if(isTrackOnePlaying) {
            source1.volume = 0;
            source2.volume = 1;
        } else {
            source1.volume = 1;
            source2.volume = 0;
        }

        isTrackOnePlaying = !isTrackOnePlaying;
    }
}
