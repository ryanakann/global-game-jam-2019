using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WatcherManager : MonoBehaviour
{

    public List<EventTrigger> triggers;

    void Start()
    {
        foreach (EventTrigger trigger in triggers) {
            trigger.TriggerEvent += EventTriggered;
        }
    }

    void EventTriggered(EventTrigger _trigger) {
        Debug.Log("ALERT");
    }

    void Update()
    {
        
    }
}
