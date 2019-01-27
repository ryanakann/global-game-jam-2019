using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NodeLauncher : MonoBehaviour
{
    public GameObject dustball;

    public float min_timer = 1f, max_timer = 5f;

    Vector3 source;
    public Transform target;

    float area = 10f, force = 200f;

    private void Start()
    {
        source = transform.position;
    }


    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Body"))
        {
            target = other.transform;
            StartCoroutine("Launch");
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Body"))
        {
            StopCoroutine("Launch");
            target = null;
        }
    }

    IEnumerator Launch()
    {
        yield return new WaitForSeconds(Random.Range(min_timer, max_timer));

        if (target)
        {
            transform.position = new Vector3( (target.position.x - source.x) / 2f, source.y, (target.position.z - source.z) / 2f);
            GameObject dust = Instantiate(dustball, transform.position + (Random.insideUnitSphere * area), Quaternion.identity);
            Vector3 dir = dust.transform.position - (target.transform.position + (target.GetComponent<Rigidbody>().velocity * Random.value));
            dust.GetComponent<Rigidbody>().AddForce(dir * force);
        }

        StartCoroutine("Launch");
    }

    public void TurnOff()
    {
        StopAllCoroutines();
        //Destroy gameObject?
    }
}
