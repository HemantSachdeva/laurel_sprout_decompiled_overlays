.class public Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final f:Lbgn;


# direct methods
.method protected constructor <init>(Lbgn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->f:Lbgn;

    return-void
.end method

.method public static getChimeraLifecycleFragmentImpl(Lbgm;)Lbgn;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    .line 1
    const-string v0, "Method not available in SDK."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public final g()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->f:Lbgn;

    check-cast v0, Lba;

    invoke-virtual {v0}, Lba;->r()Lbc;

    move-result-object v0

    return-object v0
.end method
