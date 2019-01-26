using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EquipFrame : MonoBehaviour
{
    public InventoryItem default_item;
    Image icon;
    public ItemID id = ItemID.Hand;

    private void Start()
    {
        icon = GetComponent<Image>();
    }

    private void OnMouseEnter()
    {
        MouseManager.instance.over_equip = true;
    }

    private void OnMouseExit()
    {
        MouseManager.instance.over_equip = false;
    }

    public void Equip(InventoryItem item)
    {
        icon.sprite = item.sprite;
        id = item.id;
        Inventory.instance.Equip(item);
    }

    public void Unequip()
    {
        icon.sprite = default_item.sprite;
        id = default_item.id;
        Inventory.instance.Equip(default_item);
    }
}
