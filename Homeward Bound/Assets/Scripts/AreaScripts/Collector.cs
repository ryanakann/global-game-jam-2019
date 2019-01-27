using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Collector : MonoBehaviour
{
    ParticleSystem ps;
    AudioSource aus;
    public InventoryItem collectible;

    // Start is called before the first frame update
    void Start()
    {
        ps = GetComponent<ParticleSystem>();
        aus = GetComponent<AudioSource>();
    }

    private void OnTriggerEnter(Collider collider)
    {
        if (collider.CompareTag("Player"))
        {
            //Destroy(transform.GetChild(0));
            Inventory.instance.AddItem(collectible);
            ps.Play();
            aus.Play();
            StartCoroutine("Slurp");
        }
    }

    IEnumerator Slurp()
    {
        yield return new WaitForSeconds(aus.clip.length);
        while (transform.localScale.magnitude > 0.1f)
        {
            transform.localScale -= transform.localScale * 0.1f * Time.deltaTime;
            yield return null;
        }

        Destroy(gameObject);
    }
}
