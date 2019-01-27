using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MountainEnd : MonoBehaviour
{
    public GameObject spawner;
    public bool success_flag;

    private void OnTriggerEnter(Collider collider)
    {
        if (collider.CompareTag("Player"))
        {
            if (spawner)
                Destroy(spawner);
            if (success_flag)
                SuccessMachine.instance.Succeed(Vector3.zero);
        }
    }
}
