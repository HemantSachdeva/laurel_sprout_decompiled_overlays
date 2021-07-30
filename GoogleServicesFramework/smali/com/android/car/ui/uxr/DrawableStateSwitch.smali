.class public Lcom/android/car/ui/uxr/DrawableStateSwitch;
.super Landroid/widget/Switch;
.source "DrawableStateSwitch.java"

# interfaces
.implements Lcom/android/car/ui/uxr/DrawableStateView;


# instance fields
.field private mState:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onCreateDrawableState(I)[I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateSwitch;->mState:[I

    if-nez v0, :cond_0

    .line 57
    invoke-super {p0, p1}, Landroid/widget/Switch;->onCreateDrawableState(I)[I

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    array-length v0, v0

    add-int/2addr p1, v0

    .line 60
    invoke-super {p0, p1}, Landroid/widget/Switch;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object p0, p0, Lcom/android/car/ui/uxr/DrawableStateSwitch;->mState:[I

    .line 59
    invoke-static {p1, p0}, Landroid/widget/Switch;->mergeDrawableStates([I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public setDrawableState([I)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/car/ui/uxr/DrawableStateSwitch;->mState:[I

    .line 51
    invoke-virtual {p0}, Landroid/widget/Switch;->refreshDrawableState()V

    return-void
.end method
