using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

[RequireComponent(typeof(NavMeshAgent))]
public class Cat : MonoBehaviour
{
    public CatNode current;
    CatNode target;

    NavMeshAgent agent;

    // Start is called before the first frame update
    void Start()
    {
        if (current) {
            current.TriggerEvent += Flee;
        }

        agent = GetComponent<NavMeshAgent>();
    }

    // Update is called once per frame
    void Update()
    {
    }

    void Flee(EventTrigger _trigger) {
        current.TriggerEvent -= Flee;

        target = current.neighbors[Random.Range(0, current.neighbors.Count)];

        StartCoroutine("Motor");
    }

    IEnumerator Motor() {

        agent.destination = target.transform.position;

        while (agent.hasPath) {
            yield return null;
        }

        current = target;
        current.TriggerEvent += Flee;
    }
}
