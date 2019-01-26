using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyDetection : MonoBehaviour
{
    public int distA;
    public int distB;
    private Vector3 targetDir;
    private Vector3 forward;
    private GameObject go;
    private Transform target;

    // Start is called before the first frame update
    void Start()
    {
        go = GameObject.FindGameObjectWithTag("Player");
    }

    // Update is called once per frame
    void Update()
    {
        target = go.transform;
        targetDir = target.position - transform.position;
        forward = transform.forward;
        float angle = Vector3.Angle(targetDir, forward);
        var dist = Vector3.Distance(target.position, transform.position);
        if (angle < 5.0F) {
            if (dist < distA) {
                Debug.Log("You Died");
            }
            if (dist < distB)
            {
                Debug.Log("You better be crouching");
            }
        }

            
    }
}
