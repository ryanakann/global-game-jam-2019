using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerBody : MonoBehaviour
{
    Rigidbody rb;
    Vector3 smooth_speed;
    float rot_speed = 500f, smooth_time = 0.1f;

    public float speed;

    private void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    public void FixedUpdate()
    {
        if (rb.velocity != Vector3.zero)
        {
            transform.forward = Vector3.SmoothDamp(transform.forward, 
                new Vector3(rb.velocity.x, transform.forward.y, rb.velocity.z), 
                ref smooth_speed, smooth_time);
        }
    }


    public void Move(Vector3 dir)   //Moves player in the direction of dir at speed 
    {
        rb.velocity = new Vector3(dir.x * speed, rb.velocity.y, dir.z * speed);
    }

    public void Use()
    {

    }

    public void Interact()
    {

    }
}
