using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerPlaceholder : MonoBehaviour
{

	public float speed = 5f;

    // Update is called once per frame
    void Update()
    {
		transform.position += new Vector3(Input.GetAxisRaw("Horizontal"), 0f, Input.GetAxisRaw("Vertical")).normalized * speed * Time.deltaTime;
    } 
}
