using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(BoxCollider))]
public class StepCaster : AlertCaster
{
    BoxCollider box;

    protected override void Start()
    {
        base.Start();
        box = GetComponent<BoxCollider>();
        box.isTrigger = true;
    }

    private void OnTriggerEnter(Collider other) {
        GameObject obj = other.gameObject;
        if (obj.CompareTag("Player")) {
            StartCoroutine("CastAlert");
        }
    }
}
