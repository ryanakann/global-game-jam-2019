﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class PlayerInput : MonoBehaviour
{
    public GameObject headband;

    PlayerBody body;
    Vector3 forward, right, dir;
	bool crouch;
    float hraw, vraw;
    Camera cam;
    public static bool allowMovement = true;

    private void Start()
    {
        cam = Camera.main;
        body = GetComponent<PlayerBody>();
    }

    private void Update()
    {
        if (Input.GetButtonDown("Use"))
        {
            body.Use();
        }

        if (Input.GetButtonDown("Headband"))
        {
           headband.SetActive(!headband.activeSelf);
            
        }

        if (Input.GetButtonDown("Interact"))
        {
            body.Interact();
        }

        if (Input.GetButtonDown("Inventory"))
        {
            body.OpenInventory();
        }

        /*
        if (Input.GetButtonDown("Ragdoll"))
        {
            //GetComponent<PlayerRagdoll>().ActivateRagdoll(true);
            DeathMachine.instance.Kill(Vector3.zero);
        }
        */
    }

    private void FixedUpdate()
    {
        vraw = Input.GetAxis("Vertical");
        hraw = Input.GetAxis("Horizontal");

        crouch = Input.GetAxisRaw("Crouch") > 0f;

        forward = Vector3.ProjectOnPlane(cam.transform.forward, Vector3.up);
        right = Vector3.Cross(Vector3.up, forward);
        dir = (vraw * forward + hraw * right);
        //dir = (dir.magnitude > 1f) ? dir.normalized : dir;
        dir = dir.normalized;
        body.Move(allowMovement && (Input.GetAxisRaw("Vertical") != 0f || Input.GetAxisRaw("Horizontal") != 0f), dir, allowMovement && crouch);
    }

	private void OnDrawGizmos () {
		Gizmos.color = Color.black;
		Gizmos.DrawRay(transform.position, new Vector3(Input.GetAxis("Horizontal"), 0f, Input.GetAxis("Vertical")) * 5f);
	}
}