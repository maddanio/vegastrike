#ifndef FACET_CONFIGURATION_H
#define FACET_CONFIGURATION_H

#include "core_vector.h"
#include <float.h>
#include <string>

/**
 * @brief The FacetConfiguration enum represents how many facets a layer has and it what configuration.
 * @details The use of enum class enforces the correctness of the parameter without checking.
 * You can't pass 17 for example.
 * I debated keeping the existing dual/quad but as it turns out, dual is Greek and Quad is latin.
 * It is also easier to understand five and six than penta and sexta (No! Hexa! Mixed again!).
 * This can also be extended to other facet configurations, such as pyramid
 * (left, right, top, bottom and rear).
 *
 * For consistency's sake, always start left to right, top to bottom and finally front to rear.
 * That is x,y,z. This is also how both core vector and Vector class are ordered.
 */
enum class FacetConfiguration {
    one     = 1,    // A single facet covering all directions
    two     = 2,    // Front and rear
    four    = 4,   // Front, rear, left and right
    //six     = 6,    // A cube. Front, rear, left, right, top and bottom.
    eight   = 8  // Front and rear, left and right, top and bottom
};


enum class FacetName {
    single              = 0,

    two_front           = 0,
    two_rear            = 1,

    four_left           = 0,
    four_right          = 1,
    four_front          = 2,
    four_rear           = 3,

    left_top_front     = 0,
    right_top_front    = 1,
    left_bottom_front  = 2,
    right_bottom_front = 3,
    left_top_rear      = 4,
    right_top_rear     = 5,
    left_bottom_rear   = 6,
    right_bottom_rear  = 7
};

// Same code as mount_size.h!
// auto as_integer(Enumeration const value)


#endif // FACET_CONFIGURATION_H
