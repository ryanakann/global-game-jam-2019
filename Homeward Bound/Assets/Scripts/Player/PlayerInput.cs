using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class PlayerInput : MonoBehaviour
{
    PlayerBody body;
    Vector3 forward, right, dir;
	bool crouch;
    float hraw, vraw;
    Camera cam;
    bool allowMovement;

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

        if (Input.GetButtonDown("Interact"))
        {
            body.Interact();
        }

        if (Input.GetButtonDown("Inventory"))
        {
            body.OpenInventory();
        }
    }

    private void FixedUpdate()
    {
        if (allowMovement)
        {
            vraw = Input.GetAxisRaw("Vertical");
            hraw = Input.GetAxisRaw("Horizontal");

            crouch = Input.GetAxisRaw("Fire3") > 0f;

            forward = Vector3.ProjectOnPlane(cam.transform.forward, Vector3.up);
            right = Vector3.Cross(Vector3.up, forward);
            dir = (vraw * forward + hraw * right);
            dir = (dir.magnitude > 1f) ? dir.normalized : dir;
            if (Input.GetAxisRaw("Vertical") != 0f || Input.GetAxisRaw("Horizontal") != 0f || crouch)
            {
                body.Move(dir, crouch);
            }
        }
    }

	private void OnDrawGizmos () {
		Gizmos.color = Color.black;
		Gizmos.DrawRay(transform.position, new Vector3(Input.GetAxis("Horizontal"), 0f, Input.GetAxis("Vertical")) * 5f);
	}
}