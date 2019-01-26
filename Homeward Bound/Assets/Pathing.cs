using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pathing : MonoBehaviour
{
    public List<GameObject> path;
    public float speed;
    public int next;
    private Transform target;
    // Start is called before the first frame update
    void Start()
    {
        next = 0;
        target = path[next].transform;
    }

    // Update is called once per frame
    void Update()
    {
        if (transform.position == path[next].transform.position) {
            next = (next + 1) % (path.Count);
            target = path[next].transform;
        } else {
            float step = speed * Time.deltaTime;
            transform.position = Vector3.MoveTowards(transform.position, target.position, step);
        }
    }
}
