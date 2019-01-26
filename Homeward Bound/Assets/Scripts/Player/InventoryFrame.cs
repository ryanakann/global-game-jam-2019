using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using UnityEngine.EventSystems;

public class InventoryFrame : MonoBehaviour, IPointerClickHandler, IPointerEnterHandler, IPointerExitHandler
{
    public InventoryItem item;
    Image icon;
    float max_info_timer, info_timer = 0.5f;

    public GameObject info;
    public TextMeshProUGUI header, body;

    bool infod, mouse_over;

    // Start is called before the first frame update
    void Start()
    {
        icon = GetComponent<Image>();
        if (item)
            AddItem(item);
    }

    // Update is called once per frame
    void Update()
    {
        if (mouse_over && !infod)
        {
            if (info_timer > 0f)
            {
                info_timer -= Time.deltaTime;
            }
            else if (info_timer <= 0f)
            {
                infod = true;
                info.SetActive(true);
            }
        }
    }

    public void AddItem(InventoryItem i_item)
    {
        item = i_item;
        icon.sprite = i_item.sprite;
        header.text = i_item.header;
        body.text = i_item.body;
    }

    public void OnPointerClick(PointerEventData pe)
    {
        if (!item)
            return;
        Inventory.instance.equip_frame.Equip(item);
    }

    public void OnPointerEnter(PointerEventData pe)
    {
        if (!item)
            return;
        mouse_over = true;
        info_timer = max_info_timer;
    }

    public void OnPointerExit(PointerEventData pe)
    {
        if (!item)
            return;
        DeInfo();
    }

    void DeInfo()
    {
        infod = false;
        info.SetActive(false);
        mouse_over = false;
    }

    private void OnDisable()
    {
        if (!item)
            return;
        DeInfo();
    }
}
