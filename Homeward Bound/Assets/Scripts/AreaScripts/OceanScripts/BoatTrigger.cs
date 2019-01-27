using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoatTrigger : MonoBehaviour
{
    public BoatMovement boat;
    public Transform player;
    bool triggered = false;
    float smooth_speed = 50f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerStay(Collider other)
    {
        if (!triggered && other.CompareTag("Player") && transform.position.y - other.transform.position.y > 5f)
        {
            Debug.Log("OOGA BOOGA");
            triggered = true;
            boat.player = other.transform;
            player = other.transform;
            other.GetComponent<Rigidbody>().isKinematic = true;
            PlayerInput.allowMovement = false;
            StartCoroutine("Dock");
        }
    }

    IEnumerator Dock()
    {
        float xOffset = (boat.boatPoint.transform.position.x - boat.transform.position.x);
        float zOffset = (boat.boatPoint.transform.position.z - boat.transform.position.z);
        boat.transform.position = new Vector3(player.position.x + xOffset, 
            boat.transform.position.y,
            player.transform.position.z + zOffset);
        float target = player.position.y + 10f;
        boat.transform.forward = player.forward;
        while (target - boat.boatPoint.position.y > 0.1f)
        {
            Debug.Log("OOHOHOHO");
            boat.transform.position = Vector3.MoveTowards(boat.transform.position, new Vector3(player.position.x, target, player.position.z), smooth_speed * Time.deltaTime);
            yield return null;
        }
        boat.start = true;
        boat.move = true;
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            triggered = false;
            other.GetComponent<Rigidbody>().isKinematic = false;
            PlayerInput.allowMovement = true;
        }
    }
}
