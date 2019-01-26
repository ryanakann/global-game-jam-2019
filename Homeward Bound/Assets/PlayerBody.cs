using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerBody : MonoBehaviour
{
    Rigidbody rb;

    public float speed;

    private void Start()
    {
        rb = GetComponent<Rigidbody>();
    }


    public void Move(Vector3 dir)   //Moves player in the direction of dir at speed 
    {
        dir.Normalize();
        rb.velocity = dir * speed;
        transform.rotation = Quaternion.LookRotation(dir);
    }

    public void Use()
    {

    }

    public void Interact()
    {

    }
}
