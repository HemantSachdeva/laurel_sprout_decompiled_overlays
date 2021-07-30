.class public Lcom/android/car/ui/preference/CarUiSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "CarUiSwitchPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/preference/CarUiSwitchPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/android/car/ui/R$styleable;->CarUiPreference:[I

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 71
    sget p1, Lcom/android/car/ui/R$styleable;->CarUiPreference_showRippleOnDisabledPreference:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 73
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
