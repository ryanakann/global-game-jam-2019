using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AIMover : MonoBehaviour
{

    Animator anim;
    NavMeshAgent agent;
    int speedHash;

    public bool can_move;

    // Start is called before the first frame update
    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        anim = GetComponent<Animator>();
        speedHash = Animator.StringToHash("Speed");
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if (can_move)
        {
            float speed = Mathf.Clamp(agent.velocity.magnitude / agent.speed, 0f, 1f);
            anim.SetFloat(speedHash, speed);
        }
    }
}
