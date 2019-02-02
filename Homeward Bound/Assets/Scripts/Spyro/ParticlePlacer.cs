using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace AroundTheBend {
    /// <summary>
    /// Written by Artifact-Jesse (UnityAnswers)
    /// </summary>
    public class ParticlePlacer : MonoBehaviour {
        private int lastParticleIndex = 0;  // keeps track of our oldest particle (for deletion)

        // these will all be inited in Initialize() on Start()
        private ParticleSystem particleSys;             // our object's particle system
        private ParticleSystem.Particle[] particles;    // our reusable array of particles
        private ParticleSystem.EmitParams emitParams;   // reusable emitparams
        private int maxParticles = 0;       // total number of particles in our scene before re-using


        private void Awake () {
            Initialize(); // initialize all of our member variables
        }

        
        public void CreateParticle (Vector3 position, float size, Vector3 velocity, float angularVelocity) {
            // if we're at our particle count limit, kill our oldest particle.

            int activeParticles = particleSys.GetParticles(particles);
            /// this thing sucks. Read the Unity docs VERY carefully to understand...
            /// basically the parameter (particles) is an out parameter which will
            /// write out the existing particles in the particle system to our
            /// reusable array. After that, we can directly modify the particles
            /// and then when we're done, write the particles back into the
            /// particle system with ParticleSystem.SetParticles( particles, count )

            if (activeParticles >= maxParticles) {
                // set lifetime to -1 to kill the particle
                particles[lastParticleIndex].remainingLifetime = -1;
                // we need to reset start lifetime to a normal value, too or the particle will still have infinite lifetime
                particles[lastParticleIndex].startLifetime = 1;

                lastParticleIndex++;    // keep track of oldest particle
                if (lastParticleIndex >= maxParticles) lastParticleIndex = 0;

                // have to re-write
                particleSys.SetParticles(particles, particles.Length);  // write those pesky particles back into our ParticleSystem
            }
            
            // set up params for this particle, you can use whatever you want (see unity docs for EmitParams for what's available)
            emitParams.angularVelocity = angularVelocity;
            emitParams.position = position;
            emitParams.startSize = size;
            emitParams.velocity = velocity;
            emitParams.startLifetime = float.MaxValue; // float.MaxValue makes the particle's lifetime infinite

            particleSys.Emit(emitParams, 1);
            particleSys.Play();
        }


        void Initialize () {
            if (particleSys == null)
                particleSys = GetComponent<ParticleSystem>();

            maxParticles = particleSys.main.maxParticles;

            if (particles == null || particles.Length < particleSys.main.maxParticles)
                particles = new ParticleSystem.Particle[particleSys.main.maxParticles];
        }
    }
}
