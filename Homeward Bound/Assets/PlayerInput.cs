using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class PlayerInput : MonoBehaviour
{
    PlayerBody body;
    Vector3 forward, dir;
    Camera cam;

    private void Start()
    {
        cam = Camera.main;
    }

    private void Update()
    {
        float v = Input.GetAxis("Vertical");
        float h = Input.GetAxis("Horizontal");

        if (dir.magnitude > 0f)
        {
            forward = Vector3.ProjectOnPlane(cam.transform.forward, Vector3.up);
            dir = (v * forward + h * cam.transform.right).normalized;
            body.Move(dir);
        }

        if (Input.GetAxis("Use") > 0f)
        {
            body.Use();
        }

        if (Input.GetAxis("Interact") > 0f)
        {
            body.Interact();
        }
    }
}