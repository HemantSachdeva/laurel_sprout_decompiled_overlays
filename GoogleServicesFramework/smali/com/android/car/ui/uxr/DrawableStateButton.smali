.class public Lcom/android/car/ui/uxr/DrawableStateButton;
.super Landroid/widget/Button;
.source "DrawableStateButton.java"

# interfaces
.implements Lcom/android/car/ui/uxr/DrawableStateView;


# instance fields
.field private mState:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onCreateDrawableState(I)[I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateButton;->mState:[I

    if-nez v0, :cond_0

    .line 58
    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    array-length v0, v0

    add-int/2addr p1, v0

    .line 61
    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object p0, p0, Lcom/android/car/ui/uxr/DrawableStateButton;->mState:[I

    .line 60
    invoke-static {p1, p0}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public setDrawableState([I)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/car/ui/uxr/DrawableStateButton;->mState:[I

    .line 52
    invoke-virtual {p0}, Landroid/widget/Button;->refreshDrawableState()V

    return-void
.end method
