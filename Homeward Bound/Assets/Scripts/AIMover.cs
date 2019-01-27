using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AIMover : MonoBehaviour
{

    Animator anim;
    Rigidbody rb;
    int speedHash;

    float max_speed = 10f;

    public bool can_move;

    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponent<Animator>();
        speedHash = Animator.StringToHash("Speed");
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if (can_move)
        {
            float speed = Mathf.Clamp(rb.velocity.magnitude / max_speed, 0f, 1f);
            anim.SetFloat(speedHash, speed);
        }
    }
}
