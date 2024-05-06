# Add apps
PRODUCT_PACKAGES += \
    NeoStore \
	UnifiedNlp \
	MozillaNlpBackend \
	DejaVuNlpBackend \
	NominatimNlpBackend \
	BreezyWeather \
	Nextcloud \
	Mirror \
	Smartspacer \
	SettingsInitializer

# Add system packages
PRODUCT_PACKAGES += valord

# Enable blur unless system is Go version
ifneq ($(PRODUCT_TYPE), go)
	PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
           ro.surface_flinger.supports_background_blur=1
endif	

# Include meta-information
include vendor/milkyway/config/meta.mk

# Include private configuration
-include vendor/milkyway/config/private/config.mk
