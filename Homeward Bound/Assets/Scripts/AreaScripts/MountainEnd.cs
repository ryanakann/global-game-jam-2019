using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MountainEnd : MonoBehaviour
{
    public GameObject spawner;

    private void OnTriggerEnter(Collider collider)
    {
        if (collider.CompareTag("Player"))
        {
            Destroy(spawner);
            SuccessMachine.instance.Succeed(Vector3.zero);
        }
    }
}
