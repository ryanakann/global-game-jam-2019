using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightTrigger : EventTrigger
{

    bool inLight = false;

    float lightTime = 1f;
    float currentLight = 0f;

    void Update()
    {
        if (inLight) {
            currentLight += Time.deltaTime;
        }

        if (currentLight >= lightTime) {
            ItIsTime();
        }
    }

    private void OnTriggerEnter(Collider other) {
        GameObject obj = other.gameObject;

        LightCaster caster = obj.GetComponent<LightCaster>();
        if (caster) {
            inLight = true;
        }
    }

    private void OnTriggerExit(Collider other) {
        GameObject obj = other.gameObject;

        LightCaster caster = obj.GetComponent<LightCaster>();
        if (caster) {
            inLight = false;
            currentLight = 0f;
        }
    }

    void ItIsTime() {
        TriggerEvent(this);
    }
}
