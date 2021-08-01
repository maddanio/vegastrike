#ifndef HEALTH_H
#define HEALTH_H

#include "damage.h"

/**
 * @brief The Health struct represents the health of something.
 * It can be a shield, armor, hull or subsystem.
 * @details
 * More specifically, it represents the health of DamageableFacet.
 * If the health of a non-regenerative facet is zero, it is destroyed.
 * If this facet is the sole facet of a DamageableLayer, it is destroyed.
 * If this DamageableLayer is mortal, the whole DamageableObject is destroyed.
 * Therefore, destroying the hull of a ship destoys it.
 * But, destroying the reactor or life-support of a ship also disabled it,
 * killing everyone inside,
 * potentially without actually destroying the ship.
 */
struct Health
{
public:
    float factory_max_health; // The absolute maximum, for a new, undamaged part
    float max_health; // The current max, for a potentially damaged part
    float adjusted_health;  // Max health for shields when there's not enough power for them
    float health;
    float factory_regeneration;  // The absolute maximum, for a new, undamaged part
    float regeneration; // The current capability of a potentially damaged part
    bool regenerative;
    bool destroyed;
    bool enabled;
    Damage vulnerabilities;

    // TODO: implement "shield leaks"

    /**
     * @brief The Effect enum specifies what happens when the health of a specific object is zero.
     */
    enum class Effect {
        none,       // Nothing happens
        isolated,   // The facet/layer/subsystem is destroyed
        disabling,  // The whole DamageableObject is disabled but not destroyed.
                    // It can then be tractored to another ship and repaired or sold.
        destroying  // The DamageableObject is destroyed, potentially leaving debris behind
    } effect;

    Health(float health = 1, float regeneration = 0) :
        Health(health, health, regeneration) {}


    Health(float max_health, float health, float regeneration) :
        factory_max_health(max_health),
        max_health(max_health),
        adjusted_health(max_health),
        health(health),
        factory_regeneration(regeneration),
        regeneration(regeneration),
        regenerative(regeneration > 0) {
        destroyed = false;
        enabled = regenerative; // Only relevant for regenerative objects (e.g. shields).
        vulnerabilities.normal_damage = 1;
        vulnerabilities.phase_damage = 1;
    };

    float Percent() {
        return max_health != 0 ? health/max_health : health;
    }

    void AdjustPower(const float& percent);
    void DealDamage( Damage &damage );
    void DealDamageComponent( float &damage, float vulnerability );
    void Disable();
    void Enable();
    void ReduceLayerMaximum(const float& percent);
    void ReduceRegeneration(const float& percent);
    void Regenerate();
};

#endif // HEALTH_H
