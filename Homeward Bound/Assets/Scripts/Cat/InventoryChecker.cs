using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Fungus;

public class InventoryChecker : MonoBehaviour
{
    public Flowchart flowchart;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public bool CheckBaseball(ItemID id) {
        return Inventory.instance.HasItem(id);
    }
}
