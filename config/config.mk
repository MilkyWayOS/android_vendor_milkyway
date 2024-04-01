# Add apps
PRODUCT_PACKAGES += \
        NeoStore \
	UnifiedNlp \
	MozillaNlpBackend \
	DejavuNlpBackend \
	NominatimNlpBackend \
	GeometricWeather \
	Nextcloud \
	Mirror

# Enable blur unless system is Go version
ifneq ($(PRODUCT_TYPE), go)
	PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
           ro.surface_flinger.supports_background_blur=1
endif	

# Include meta-information
include vendor/polar/config/meta.mk

# Include private configuration
-include vendor/polar/config/private/config.mk
