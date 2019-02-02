using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(RectTransform), typeof(LayoutElement))]
public class SquareLayoutElement : MonoBehaviour {

    public enum Axis { Horizontal, Vertical }
    public Axis axis;

    public RectTransform parent;
    private LayoutElement le;
    public float size;

    public Vector2 lastDelta;

    // Start is called before the first frame update
    void Start () {
        //parent = (RectTransform)transform.parent;
        le = GetComponent<LayoutElement>();
        lastDelta = parent.sizeDelta;
        UpdateSize();
    }

    // Update is called once per frame
    void Update () {

        // ensure that this always matches the current size of UI
        if (parent.sizeDelta != lastDelta)
            UpdateSize();
        lastDelta = parent.sizeDelta;
    }

    public void UpdateSize () {
        print(axis + ": " + (axis == Axis.Horizontal ? parent.sizeDelta.y : parent.sizeDelta.x));
        size = axis == Axis.Horizontal ? parent.sizeDelta.y : parent.sizeDelta.x;
        le.preferredHeight = size;
        le.preferredWidth = size;
    }
}
