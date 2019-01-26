using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item : MonoBehaviour
{
    public ItemID id;
    public InventoryItem invItem;
    [HideInInspector] public bool equipped;



    private void OnCollisionEnter(Collision collision)
    {
        if (!equipped && collision.gameObject.CompareTag("Player"))
        {
            PickUp();
        }
    }

    public void PickUp()
    {
        Inventory.instance.AddItem(invItem);

        Destroy(gameObject);
    }

    public virtual void Use()
    {
        
    }
}