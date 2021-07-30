.class public Lcom/android/car/ui/preference/CarUiRadioButtonPreference;
.super Landroidx/preference/TwoStatePreference;
.source "CarUiRadioButtonPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lcom/android/car/ui/preference/CarUiRadioButtonPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 54
    sget v0, Lcom/android/car/ui/R$layout;->car_ui_preference:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 55
    sget v0, Lcom/android/car/ui/R$layout;->car_ui_radio_button_preference_widget:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method
