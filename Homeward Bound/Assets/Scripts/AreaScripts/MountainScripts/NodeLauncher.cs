using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NodeLauncher : MonoBehaviour
{
    public GameObject dustball;

    public float min_timer = 0.5f, max_timer = 4f;

    Vector3 source;
    public Transform target;

    float area = 10f, force = 10f;

    private void Start()
    {
        source = transform.position;
    }


    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("INNIE");
            target = other.transform;
            StartCoroutine("Launch");
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("OUTTIE");
            StopCoroutine("Launch");
            target = null;
        }
    }

    IEnumerator Launch()
    {
        yield return new WaitForSeconds(Random.Range(min_timer, max_timer));

        Debug.Log("AAAAAA");
        if (target)
        {
            Debug.Log("GOT TARGET");
            transform.position = new Vector3( (target.position.x + source.x) / 2f, source.y, (target.position.z + source.z) / 2f);
            GameObject dust = Instantiate(dustball, transform.position + (Random.insideUnitSphere * area), Quaternion.identity);
            dust.transform.localScale *= Random.Range(0.5f, 4.0f);
            Vector3 dir = (target.transform.position + (target.GetComponent<Rigidbody>().velocity * Random.value)) - dust.transform.position;
            dust.GetComponent<Rigidbody>().AddForce(dir * (force * Random.value));
        }

        StartCoroutine("Launch");
    }

    public void TurnOff()
    {
        StopAllCoroutines();
        //Destroy gameObject?
    }
}
