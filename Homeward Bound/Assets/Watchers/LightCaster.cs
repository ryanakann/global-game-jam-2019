using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(SphereCollider))]
public class LightCaster : MonoBehaviour
{
    public Light flashlight;

    float castRadius = 5f;
    SphereCollider sphere;

    void Start()
    {
        sphere = GetComponent<SphereCollider>();
        sphere.isTrigger = true;
        sphere.enabled = false;

        flashlight.enabled = false;
    }
}
