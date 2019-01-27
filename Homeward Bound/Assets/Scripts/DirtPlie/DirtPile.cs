using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Cinemachine;

[RequireComponent(typeof(SphereCollider))]
public class DirtPile : MonoBehaviour
{

    public CinemachineVirtualCamera vc;
    CinemachineBasicMultiChannelPerlin perlin;

    public Transform player;

    public GameObject feetDustPrefab;
    GameObject feetDust;
    ParticleSystem feetParticles;

    SphereCollider sphere;

    bool doinIt = false;

    float interval = 5f;
    float intervalCount = 0f;

    float rumbleLength = 5f;
    float criticalRumble = 3f;
    float rumbleCount = 0f;

    float leeway = 10f;

    // Start is called before the first frame update
    void Start() {
        sphere = GetComponent<SphereCollider>();
        sphere.isTrigger = true;
        vc = GameObject.FindWithTag("Virtual Cam").GetComponent<CinemachineVirtualCamera>();
        perlin = vc.GetCinemachineComponent<CinemachineBasicMultiChannelPerlin>();
    }

    private void Update() {
        if (doinIt) {

            DoTimerShit();
        }
    }

    void DoTimerShit() {
        intervalCount += Time.deltaTime;
        if (intervalCount >= interval) {
            if (player)
                StartCoroutine("Rumble");

            interval = Random.Range(5f, 10f);
            intervalCount = 0f;
        }
    }

    IEnumerator Rumble() {
        doinIt = false;
        rumbleCount = 0f;

        feetParticles.Play();

        Vector3 lastPlayerPos = player.position;
        Vector3 nowPlayerPos = player.position;

        perlin.m_AmplitudeGain = 1f;

        while (rumbleCount <= rumbleLength) {
            rumbleCount += Time.deltaTime;

            if (rumbleCount >= criticalRumble) {
                perlin.m_AmplitudeGain = 3f;

                nowPlayerPos = player.position;
                float diff = (lastPlayerPos - nowPlayerPos).magnitude;

                if (diff > leeway) {
                    Oof();
                }

                lastPlayerPos = nowPlayerPos;
            }

            yield return null;
        }

        perlin.m_AmplitudeGain = 0f;

        feetParticles.Stop();


        if (!doinIt) {
            doinIt = true;
        }
    }

    void Oof() {
        DeathMachine.instance.Kill(Vector3.zero);
    }

    private void OnTriggerEnter(Collider other) {
        GameObject obj = other.gameObject;

        if (obj.CompareTag("Player")) {
            player = obj.transform;
            doinIt = true;
            feetDust = Instantiate(feetDustPrefab, player);
            feetParticles = feetDust.GetComponent<ParticleSystem>();
            feetParticles.Stop();
        }
    }

    private void OnTriggerExit(Collider other) {
        GameObject obj = other.gameObject;

        if (obj.CompareTag("Player")) {
            Debug.Log("Player Exited Dust");
            doinIt = false;
            Destroy(feetDust);
        }
    }

    private void OnDestroy()
    {
        if (feetParticles)
            Destroy(feetParticles.gameObject);
    }
}
