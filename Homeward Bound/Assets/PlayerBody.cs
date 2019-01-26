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


    public void Move(Vector3 dir)   //Moves player in the direction of dir at speed 
    {

        rb.velocity = Vector3.SmoothDamp(rb.velocity, new Vector3(dir.x*speed, rb.velocity.y, dir.z*speed), ref smooth_speed, smooth_time);

        if (rb.velocity != Vector3.zero)
        {
            transform.rotation = Quaternion.RotateTowards(transform.rotation, 
                Quaternion.LookRotation(new Vector3(rb.velocity.x, 0, rb.velocity.z)), 
                Time.deltaTime * rot_speed);
        }
    }

    public void Use()
    {

    }

    public void Interact()
    {

    }
}
