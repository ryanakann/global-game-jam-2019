using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WalkingNPC : MonoBehaviour
{
    //NPC Will walk through all nodes then back to starting point in a loop
    public Transform[] nodes;
    int currentNode = 0;

    Rigidbody rb;

    public float speed;
    public bool move;
    
    private void Start()
    {
        rb = GetComponent<Rigidbody>();
        transform.LookAt(nodes[currentNode]);
    }

    private void Update()
    {
        if (move)
        {
            rb.velocity = transform.forward * speed;
            transform.LookAt(nodes[currentNode]);
        }
        if(AtNode(currentNode))
        {
            GoToNextNode();
            //print("Going to node:" + currentNode);
        }
    }

    public void GoToNextNode()
    {
        transform.position = nodes[currentNode].position;
        currentNode++;
        currentNode %= nodes.Length;

        transform.LookAt(nodes[currentNode]);
    }

    public bool AtNode(int node)
    {
        Vector3 diff = nodes[node].position - transform.position;
        if(Mathf.Abs(diff.x) < .05f && Mathf.Abs(diff.y) < .05f && Mathf.Abs(diff.z) < .05f)
        {
            //print("Reached node:" + currentNode);
            return true;
        }
        return false;
    }
}
