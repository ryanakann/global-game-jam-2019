using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class PlayerInput : MonoBehaviour
{
    PlayerBody body;
    Vector3 forward, dir;
    float h, v;
    Camera cam;

    private void Start()
    {
        cam = Camera.main;
        body = GetComponent<PlayerBody>();
    }

    private void Update()
    {
        v = Input.GetAxis("Vertical");
        h = Input.GetAxis("Horizontal");
        forward = Vector3.ProjectOnPlane(cam.transform.forward, Vector3.up);
        dir = (v * forward + h * cam.transform.right);
        dir = (dir.magnitude > 1f) ? dir.normalized : dir;
        body.Move(dir);

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