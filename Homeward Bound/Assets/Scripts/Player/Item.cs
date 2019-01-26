using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item : MonoBehaviour
{
    public ItemID id;
    public InventoryItem invItem;
    bool equipped;



    private void OnCollisionEnter(Collision collision)
    {
        if (!equipped && collision.gameObject.CompareTag("Player"))
        {
            PickUp(collision.gameObject.GetComponent<Inventory>());
        }
    }

    public void PickUp(Inventory inventory)
    {
        inventory.AddItem(invItem);

        Destroy(gameObject);
    }

    public bool IsEquipped()
    {
        return equipped; 
    }
}