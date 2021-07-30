.class public Lcom/android/car/ui/preference/CarUiTwoActionPreference;
.super Lcom/android/car/ui/preference/CarUiPreference;
.source "CarUiTwoActionPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0, p2}, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2

    .line 64
    sget v0, Lcom/android/car/ui/R$layout;->car_ui_two_action_preference:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 65
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/car/ui/R$styleable;->CarUiTwoActionPreference:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 67
    sget v0, Lcom/android/car/ui/R$styleable;->CarUiTwoActionPreference_actionShown:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiPreference;->setShowChevron(Z)V

    .line 70
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
