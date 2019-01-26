using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AlertListener : EventTrigger
{
    public void Alert() {
        Debug.Log("Alert Trigger Got Alert");
        TriggerEvent(this);
    }

    private void OnTriggerEnter(Collider other) {
        Debug.Log("Listener On Trigger Enter");

        GameObject obj = other.gameObject;

        AlertCaster caster = obj.GetComponent<AlertCaster>();
        if (caster) {
            Alert();
        }
    }
}
