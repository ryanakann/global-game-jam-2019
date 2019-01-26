using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class EquipFrame : MonoBehaviour, IPointerClickHandler
{
    public InventoryItem default_item;
    Image icon;
    public ItemID id = ItemID.Hand;

    private void Start()
    {
        icon = GetComponent<Image>();
    }

    public void OnPointerClick(PointerEventData pe)
    {
        Unequip();
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
