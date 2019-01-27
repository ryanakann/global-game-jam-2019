using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(SphereCollider))]
public class Roller : MonoBehaviour
{
    SphereCollider sphere;

    private void Start() {
        sphere = GetComponent<SphereCollider>();
        Destroy(gameObject, 15f);
    }

    private void OnCollisionEnter(Collision collision) {
        GameObject obj = collision.gameObject;
        if (obj.CompareTag("Player")) {
            DeathMachine.instance.Kill(LocationMap.instance.mountain.position);
        }
    }

}
