using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestDragonQuest : MonoBehaviour
{
    public InventoryItem cat, money;

    // Start is called before the first frame update
    void Start()
    {
        Inventory.instance.AddItem(cat);
        Inventory.instance.AddItem(money);
    }

    // Update is called once per frame
    void Update()
    {
        Debug.Log("has cat: " + Inventory.instance.HasItem(ItemID.Cat));
        Debug.Log("has $$$: " + Inventory.instance.HasItem(ItemID.FiveBucks));
    }
}
