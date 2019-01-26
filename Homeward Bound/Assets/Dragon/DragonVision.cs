using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DragonVision : MonoBehaviour
{
    float visionRadius = 5f;

    void Update()
    {
        Gaze();
    }

    void Gaze() {
        RaycastHit hit;
        Physics.SphereCast(transform.position, visionRadius, transform.forward, out hit);

        if (hit.collider && hit.collider.gameObject.CompareTag("Player")) {
            PlayerSeen();
        }
    }

    void PlayerSeen() {
        Debug.Log("Who dis?");
    }
}
