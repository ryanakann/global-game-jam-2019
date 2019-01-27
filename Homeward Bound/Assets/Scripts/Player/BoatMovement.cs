using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoatMovement : MonoBehaviour
{
	public Transform player;
    Rigidbody rb;

    public bool move;   //If true, allow boat to move and rotate

    public float speed;
    public float turningSpeed;


    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
		move = false;
    }

    // Update is called once per frame
    void Update()
    {
        if(move)
        {
            rb.velocity = transform.forward * speed;

            float hz = Input.GetAxisRaw("Horizontal");
            Vector3 rotate = new Vector3(0.0f, hz * turningSpeed, 0.0f);
            transform.Rotate(rotate);
			player.position = transform.Find("JoinPoint").position;
		}
        else
        {
            rb.velocity = Vector3.zero;
        }
    }

	public void InitializeBoat () {
		StartCoroutine(InitializeBoatCR());
	}

	IEnumerator InitializeBoatCR () {
		while (transform.position.y < 46f) {
			transform.position += 0.05f * Vector3.up * Time.deltaTime;
			yield return new WaitForEndOfFrame();
		}

		if (player) {
			player.position = transform.Find("JoinPoint").position;

			PlayerInput.allowMovement = false;
		}

		yield return new WaitForSeconds(10f);
	}

	public void SetSail () {
		move = true;
	}

	public void Sink () {

	}
}
