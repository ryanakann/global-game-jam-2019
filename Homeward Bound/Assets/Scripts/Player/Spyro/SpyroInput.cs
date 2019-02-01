using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpyroInput : MonoBehaviour {
    public GameObject headband;

    SpyroBody body;
    bool crouch;

    public float InputX, InputZ;
    public Vector3 desiredMoveDir;
    public bool blockPlayerRot, forceGrounded;
    public float desiredRotSpeed;
    public float Speed;
    public float allowPlayerRot;
    public bool isGrounded;
    private float verticalVel;
    public float Meiji = .01f;

    private Vector3 moveVector;
    public Animator anim;
    private CharacterController controller;

    Camera cam;
    public static bool allowMovement = true;

    private void Start() {
        controller = GetComponent<CharacterController>();
        cam = Camera.main;

    }

    private void Update() {
        if (Input.GetButtonDown("Use")) {
            
        }

        if (Input.GetButtonDown("Headband")) {
            headband.SetActive(!headband.activeSelf);

        }

        if (Input.GetButtonDown("Interact")) {
            
        }

        if (Input.GetButtonDown("Inventory")) {
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

    private void FixedUpdate() {
        InputMagnitude();

        //Keep Character Grounded
        if(forceGrounded){
            if (isGrounded = controller.isGrounded) {
                verticalVel -= 0;
            } else {
                verticalVel -= 2;
            }
            Debug.Log("GROUND: " + controller.isGrounded);
            anim.SetBool("IsGrounded", isGrounded);

            moveVector = new Vector3(0,verticalVel,0);
            controller.Move(moveVector);
        }
    }

    private void PlayerMoveAndRotation() {
        InputX = Input.GetAxis("Horizontal");
        InputZ = Input.GetAxis("Vertical");

        cam = Camera.main;
        var forward = cam.transform.forward;
        var right = cam.transform.right;

        forward.y = 0f; right.y = 0f;
        forward.Normalize();
        right.Normalize();

        desiredMoveDir = forward * InputZ + right * InputX;
        if (!blockPlayerRot) {
            transform.rotation = Quaternion.Slerp(transform.rotation,
                Quaternion.LookRotation(desiredMoveDir),desiredRotSpeed);
        }

        controller.Move(Meiji*desiredMoveDir);
    }

    public float damping = 0.0f; 
    private void InputMagnitude() {
        //Calc In vectors
        InputX = Input.GetAxis("Horizontal");
        InputZ = Input.GetAxis("Vertical");

        anim.SetFloat("InputX", InputX, damping, 2f * Time.deltaTime);
        anim.SetFloat("InputZ", InputZ, damping, 2f * Time.deltaTime);

        //Calc Magnitude
        Speed = new Vector2(InputX, InputZ).sqrMagnitude;

        //Physically move
        anim.SetFloat("InputMagnitude", Speed, damping, Time.deltaTime);
        if (Speed > allowPlayerRot)
            PlayerMoveAndRotation();
    }

    private void OnDrawGizmos () {
        Gizmos.color = Color.black;
        Gizmos.DrawRay(transform.position, new Vector3(Input.GetAxis("Horizontal"), 
            0f, Input.GetAxis("Vertical")) * 5f);
    }
}