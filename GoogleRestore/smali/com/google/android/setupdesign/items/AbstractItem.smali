.class public abstract Lcom/google/android/setupdesign/items/AbstractItem;
.super Lcom/google/android/setupdesign/items/AbstractItemHierarchy;
.source "PG"

# interfaces
.implements Lcmo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public X()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final a(I)Lcmo;
    .locals 0

    return-object p0
.end method

.method public b(I)Lcms;
    .locals 1

    iget v0, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->g:I

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->c(I)V

    return-void
.end method
