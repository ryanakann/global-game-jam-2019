using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Kickball : MonoBehaviour
{
    public float forceMultiplier;

    private void OnCollisionEnter(Collision collision)
    {
        GameObject col = collision.gameObject;
        if(col.CompareTag("Player"))
        {
            Vector3 norm = collision.GetContact(0).normal;
            Vector3 forceVector = new Vector3(norm.x, 1f, norm.z);
            GetComponent<Rigidbody>().AddForce(forceVector * forceMultiplier);
        }
    }
}
