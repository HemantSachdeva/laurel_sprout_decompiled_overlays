.class public Lcom/android/car/ui/preference/CarUiPreference;
.super Landroidx/preference/Preference;
.source "CarUiPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 58
    sget v0, Lcom/android/car/ui/R$attr;->carUiPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 54
    sget v0, Lcom/android/car/ui/R$style;->Preference_CarUi_Preference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/car/ui/preference/CarUiPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiPreference;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/android/car/ui/R$styleable;->CarUiPreference:[I

    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 74
    sget p1, Lcom/android/car/ui/R$styleable;->CarUiPreference_showChevron:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 75
    sget p1, Lcom/android/car/ui/R$styleable;->CarUiPreference_showRippleOnDisabledPreference:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 78
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setShowChevron(Z)V
    .locals 0

    return-void
.end method
