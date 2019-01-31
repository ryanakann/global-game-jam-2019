using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AIMover : MonoBehaviour
{

    Animator anim;
    NavMeshAgent agent;
    int speedHash;
	int canMoveHash;

    public bool can_move;

    // Start is called before the first frame update
    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        anim = GetComponentInChildren<Animator>();
        speedHash = Animator.StringToHash("Speed");
		canMoveHash = Animator.StringToHash("CanMove");
    }

    // Update is called once per frame
    void Update()
    {
        if (can_move)
        {
            float speed = Mathf.Clamp(agent.velocity.magnitude / agent.speed, 0f, 1f);
            anim.SetFloat(speedHash, speed);
        }

		anim.SetBool(canMoveHash, can_move);
	}
}
