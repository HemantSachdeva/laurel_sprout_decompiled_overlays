.class public final Lcit;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lcin;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(F)F

    move-result v0

    iput v0, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:F

    .line 2
    const v0, 0x3f19999a    # 0.6f

    invoke-static {v0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(F)F

    move-result v0

    iput v0, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    const/4 v0, 0x0

    iput v0, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:I

    return-void
.end method
