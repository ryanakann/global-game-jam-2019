using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoatMovement : MonoBehaviour
{
    public Transform player;
    Rigidbody rb;
    public Transform boatPoint;

    Animation anim;
    public AnimationClip bob, sink;

    public bool move, start;   //If true, allow boat to move and rotate

    public float speed = 500f;
    [HideInInspector] public float turningSpeed = 10f;


    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
        move = false;
        anim = GetComponentInChildren<Animation>();
    }

    // Update is called once per frame
    void Update()
    {
        if (move)
        {
            rb.velocity = transform.forward * speed;
            float hz = Input.GetAxisRaw("Horizontal");
            Vector3 rotate = new Vector3(0.0f, hz * turningSpeed, 0.0f);
            transform.Rotate(rotate);
            Debug.Log("MKAY");
        }
        else
        {
            rb.velocity = Vector3.zero;
        }
        if (player && start)
        {
            player.position = boatPoint.position;
            player.rotation = boatPoint.rotation;
        }
    }

    public void InitializeBoat()
    {
        anim.clip = bob;
        anim.Play();
        transform.up = Vector3.up;
        move = false;
    }

    public void Sink()
    {
        Vector3 offset = new Vector3(transform.position.x, transform.position.y - 10f, transform.position.z);
        start = false;
        move = false;
        anim.clip = sink;
        anim.Play();
        transform.position = Vector3.MoveTowards(transform.position, offset, 20f);
        DeathMachine.instance.Kill(LocationMap.instance.lake.position);
    }

    private void OnTriggerEnter(Collider collider)
    {
        if (collider.CompareTag("Crashable"))
        {
            Sink();
        }
        else if (collider.CompareTag("Item"))
        {
            move = false;
        }
    }

    private void OnTriggerExit(Collider collider)
    {
        if (collider.CompareTag("Item"))
        {
            move = true;
        }
    }
}