using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerBody : MonoBehaviour
{
    Rigidbody rb;
    float smooth_speed;
    float smooth_time = 0.01f, max_rot_speed = 50f;
    Item equipped_item;
    public Transform hand;

    public Animator anim;
    int speedHash, crouchHash;

    [HideInInspector]public float speed = 20f;
    float ground_dist = 0.1f;
    Collider body_collider;
    PlayerRagdoll ragdoll;

    public bool moving;

	Vector3 respawn_position;

    private void Start()
    {
        rb = GetComponent<Rigidbody>();
        Inventory.instance.EquipEvent += Equip;
        if (!anim)
            anim = GetComponent<Animator>();
        speedHash = Animator.StringToHash("Speed");
        crouchHash = Animator.StringToHash("Crouching");
        body_collider = GetComponent<Collider>();
        DeathMachine.instance.DeathEvent += Die;
        DeathMachine.instance.LifeEvent += Live;
        ragdoll = GetComponent<PlayerRagdoll>();
    }

    private void Update() {
        RaycastHit hit;
        if (!Physics.Raycast(transform.position, Vector3.down, out hit, ground_dist))
        {
            rb.drag = 0f;
        }
        else
        {
            rb.drag = 8f;
        }
    }

    public void Move(bool move, Vector3 dir, bool crouch)   //Moves player in the direction of dir at speed 
    {
        if (move)
        {
            if (rb.velocity.magnitude >= 0.1f * speed)
            {
                float heading = Mathf.Atan2(rb.velocity.x + (dir.x * 0.2f), rb.velocity.z + (dir.z * 0.2f)) * Mathf.Rad2Deg;
                Quaternion rotation = Quaternion.Euler(0, heading, 0);
                rb.MoveRotation(rotation);
            }

            rb.velocity = new Vector3(dir.x * speed * (crouch ? 0.5f : 1), rb.velocity.y, dir.z * speed * (crouch ? 0.5f : 1));
        }

        moving = move;

        anim.SetFloat(speedHash, rb.velocity.magnitude / speed * (crouch ? 0.5f : 1));
        anim.SetBool(crouchHash, crouch);
    }

    public void Use()
    {
        equipped_item?.Use();
    }

    public void Interact()
    {

    }

    public void OpenInventory()
    {
        Inventory.instance.Open();
    }

    public void Equip(InventoryItem i_item)
    {
        if(equipped_item)
        {
            Destroy(equipped_item.gameObject);
        }
        //spawn i_item.obj in hand, unless the i_item.id == ItemID.hand
        if(i_item.id != ItemID.Hand)
        {
            Instantiate(i_item.obj, hand).GetComponent<Item>();
        }
    }

    public void Die(Vector3 respawn_position)
    {
        ragdoll.ActivateRagdoll(true);
        PlayerInput.allowMovement = false;
        this.respawn_position = respawn_position;
    }

    public void Live()
    {
        ragdoll.ActivateRagdoll(false);
        PlayerInput.allowMovement = true;
        transform.position = respawn_position;
    }
}
