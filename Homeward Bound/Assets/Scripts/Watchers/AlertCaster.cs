using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(SphereCollider))]
public class AlertCaster : MonoBehaviour
{
    float castRadius = 5f;
    float radius = 0f;

    SphereCollider sphere;
    
    // Start is called before the first frame update
    protected virtual void Start()
    {
        sphere = GetComponent<SphereCollider>();
        sphere.isTrigger = true;
        sphere.enabled = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.A)) {
            StartCoroutine("CastAlert");
        }
    }

    IEnumerator CastAlert() {
        sphere.enabled = true;
        while (castRadius - radius >= 0.01f) {
            radius = Mathf.Lerp(radius, castRadius, 0.1f);
            sphere.radius = radius;
            yield return null;
        }
        radius = 0f;
        sphere.enabled = false;
    }
}
