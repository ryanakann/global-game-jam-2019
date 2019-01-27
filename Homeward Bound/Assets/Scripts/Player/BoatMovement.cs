using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoatMovement : MonoBehaviour
{
    Rigidbody rb;

    bool dead = false;
    public bool move;   //If true, allow boat to move and rotate

    public float speed;
    public float turningSpeed;


    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        if(move)
        {
            rb.velocity = transform.forward * speed;

            float hz = Input.GetAxisRaw("Horizontal");
            Vector3 rotate = new Vector3(0.0f, hz * turningSpeed, 0.0f);
            transform.Rotate(rotate);
        }
        else
        {
            rb.velocity = Vector3.zero;
        }
        if(dead)
        {
            move = false;
            rb.velocity = -1 * Vector3.up;
        }
    }

    public void Sink()
    {
        dead = true;
    }

    public void StopMoving()
    {
        move = false;
    }

    public void StartMoving()
    {
        move = true;
    }


}
