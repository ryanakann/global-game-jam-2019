using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpyroBody : MonoBehaviour {
    
    Item equipped_item;
    public Transform hand;

    public Animator anim;
    int speedHash, crouchHash, actionHash, actionIDHash;

    [HideInInspector] public float speed = 20f;
    float ground_dist = 0.1f;
    Collider body_collider;
    PlayerRagdoll ragdoll;

    public bool moving;

    private void Start() {
        Inventory.instance.EquipEvent += Equip;
        if (!anim)
            anim = GetComponent<Animator>();
        speedHash = Animator.StringToHash("Speed");
        crouchHash = Animator.StringToHash("Crouching");
        actionHash = Animator.StringToHash("Action");
        actionIDHash = Animator.StringToHash("ActionID");
        body_collider = GetComponent<Collider>();
        DeathMachine.instance.DeathEvent += OnDeath;
        SuccessMachine.instance.SuccessEvent += OnSuccess;
        Respawner.instance.RespawnEvent += OnRespawn;
        ragdoll = GetComponent<PlayerRagdoll>();
    }

    private void Update() {

    }

    public void Use() {
        equipped_item?.Use();
    }

    public void Interact() {

    }

    public void OpenInventory() {
        Inventory.instance.Open();
    }

    public void Equip(InventoryItem i_item) {
        if (equipped_item) {
            Destroy(equipped_item.gameObject);
        }
        //spawn i_item.obj in hand, unless the i_item.id == ItemID.hand
        if (i_item.id != ItemID.Hand) {
            Item newItem = Instantiate(i_item.obj,hand).GetComponent<Item>();
            //newItem.holder = this;
            anim.SetInteger(actionIDHash,(int)newItem.id);
        } else {
            anim.SetInteger(actionIDHash,0);
        }
    }

    public void OnDeath() {
        ragdoll.ActivateRagdoll(true);
        PlayerInput.allowMovement = false;
    }

    public void OnSuccess() {
        PlayerInput.allowMovement = false;
        Action(ActionID.Dance);
    }

    public void OnRespawn(Vector3 respawn_position) {
        ragdoll.ActivateRagdoll(false);
        PlayerInput.allowMovement = true;
        transform.position = respawn_position;
    }

    public void Action(ActionID id) {
        //anim.SetInteger(actionIDHash, (int)id);
        anim.SetTrigger(actionHash);
    }
}
