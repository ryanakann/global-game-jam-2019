using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class InventoryFrame : MonoBehaviour
{
    public InventoryItem item;
    Image icon;
    bool clicked, infod;
    float max_info_timer, info_timer = 0.5f;
    Vector3 position;

    public GameObject info;
    public TextMeshProUGUI header, body;
    private string header_text, body_text;

    // Start is called before the first frame update
    void Start()
    {
        icon = GetComponent<Image>();
        position = transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        if (clicked)
            transform.position = Input.mousePosition;
    }

    public void AddItem(InventoryItem i_item)
    {
        item = i_item;
        icon.sprite = i_item.sprite;
        header.text = header_text;
        body.text = body_text;
    }

    public void OnMouseDown()
    {
        if (!item)
            return;
        if (MouseManager.instance.over_equip)
        {
            Inventory.instance.equip_frame.Equip(item);
        }
        else if (MouseManager.instance.equip_frame.id == item.id)
        {
            Inventory.instance.equip_frame.Unequip();
        }
        transform.position = position;
        clicked = !clicked;
        if (!clicked)
        {
            DeInfo();
            icon.raycastTarget = true;
        }
        else
            icon.raycastTarget = false;
    }

    public void OnMouseOver()
    {
        if (!item)
            return;
        if (!clicked && !infod && info_timer > 0f)
        {
            info_timer -= Time.deltaTime;
        }
        else if (info_timer <= 0f)
        {
            info_timer = max_info_timer;
            infod = true;
            info.SetActive(true);
        }
    }

    public void OnMouseExit()
    {
        if (!item)
            return;
        if (infod)
            DeInfo();
    }

    void DeInfo()
    {
        info_timer = max_info_timer;
        infod = false;
        info.SetActive(false);
    }

    private void OnDisable()
    {
        if (!item)
            return;
        DeInfo();
        clicked = false;
        transform.position = position;
    }
}
