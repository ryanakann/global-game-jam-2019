using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
[RequireComponent(typeof(SphereCollider))]
public class CatNode : EventTrigger
{
    public List<CatNode> neighbors = new List<CatNode>();

    SphereCollider sphere;

    // Start is called before the first frame update
    void Start()
    {
        sphere = GetComponent<SphereCollider>();
        sphere.isTrigger = true;

        foreach (CatNode node in neighbors) {
            if (!node.neighbors.Contains(this)) {
                node.neighbors.Add(this);
            }
        }
    }

    private void OnTriggerEnter(Collider other) {
        GameObject obj = other.gameObject;
        if (obj.CompareTag("Player")) {
            TriggerEvent(this);
        }
    }

    private void OnDrawGizmos() {
        Gizmos.color = Color.red;

        Gizmos.DrawSphere(transform.position, 2f);

        Gizmos.color = Color.green;

        if (neighbors == null) {
            return;
        }

        foreach (CatNode node in neighbors) {
            if (node) {
                Gizmos.DrawLine(transform.position, node.transform.position);
            }
            
        }
    }
}
