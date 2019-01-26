using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerBody : MonoBehaviour
{
    Rigidbody rb;
    Vector3 smooth_speed;
    float rot_speed = 500f, smooth_time = 0.2f;

    public float speed = 5f;

	Vector3 dirGizmo;

    private void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    public void Move(Vector3 dir, bool crouch)   //Moves player in the direction of dir at speed 
    {
		dirGizmo = dir;
		if (rb.velocity != Vector3.zero) {
			transform.forward = Vector3.SmoothDamp(transform.forward,
			dir,
			ref smooth_speed, smooth_time);
			//transform.forward = Vector3.Lerp(transform.forward, dir, 100f * Time.deltaTime);
		}

		rb.velocity = new Vector3(dir.x * speed * (crouch ? 0.5f : 1), rb.velocity.y, dir.z * speed * (crouch ? 0.5f : 1));
    }

    public void Use()
    {

    }

    public void Interact()
    {

    }
}
