.class public Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;
.super Landroidx/preference/DialogPreference;
.source "CarUiSeekBarDialogPreference.java"

# interfaces
.implements Lcom/android/car/ui/preference/DialogFragmentCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-direct {p0}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 76
    sget v0, Lcom/android/car/ui/R$layout;->car_ui_seekbar_dialog:I

    invoke-virtual {p0, v0}, Landroidx/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 77
    sget v0, Lcom/android/car/ui/R$string;->car_ui_dialog_preference_positive:I

    invoke-virtual {p0, v0}, Landroidx/preference/DialogPreference;->setPositiveButtonText(I)V

    .line 78
    sget v0, Lcom/android/car/ui/R$string;->car_ui_dialog_preference_negative:I

    invoke-virtual {p0, v0}, Landroidx/preference/DialogPreference;->setNegativeButtonText(I)V

    return-void
.end method
