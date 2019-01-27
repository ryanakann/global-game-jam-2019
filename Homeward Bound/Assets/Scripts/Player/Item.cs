using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum ActionID { Dance }

public class Item : MonoBehaviour
{
    protected static bool picked_up = false;

    public ItemID id;
    public ActionID actionID;
    public InventoryItem invItem;
    [HideInInspector] public bool equipped;
    public PlayerBody holder;

    public void PickUp()
    {
        picked_up = true;

        Inventory.instance.AddItem(invItem);

        Destroy(gameObject);
    }

    public virtual void Use()
    {
    }
}