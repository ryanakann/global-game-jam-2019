using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public delegate void EquipDel(InventoryItem item);

public class Inventory : MonoBehaviour
{
    public static Inventory instance;
    public List<InventoryFrame> frames = new List<InventoryFrame>();
    public EquipFrame equip_frame;
    public GameObject inventory_frame_panel;

    public EquipDel EquipEvent;

    private void Awake()
    {
        if (!instance) {
            instance = this;
        }
        else if (instance != this)
        {
            Destroy(gameObject);
        }
    }

    public void AddItem(InventoryItem item)
    {
        foreach (InventoryFrame frame in frames)
        {
            if (!frame.item)
            {
                frame.AddItem(item);
            }
        }

        Equip(item); //Idk
    }

    public void Equip(InventoryItem item)
    {
        EquipEvent?.Invoke(item);
    }

    public void Open()
    {
        inventory_frame_panel.SetActive(!inventory_frame_panel.activeSelf);
    }

    public bool HasItem(ItemID id)
    {
        foreach (InventoryFrame frame in frames)
        {
            if (frame.item.id == id)
            {
                return true;
            }
        }
        return false;
    }
}
