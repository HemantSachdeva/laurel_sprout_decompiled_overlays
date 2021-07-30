.class public final Lcom/google/android/libraries/performance/primes/debug/PrimesEventActivity;
.super Lib;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lib;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 2
    invoke-super {p0, p1}, Lib;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lbx;->a()Lch;

    move-result-object p1

    new-instance v0, Lbua;

    invoke-direct {v0}, Lbua;-><init>()V

    const v1, 0x1020002

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 5
    invoke-virtual {p1, v1, v0, v2, v3}, Lch;->a(ILba;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p1}, Lch;->a()V

    :cond_0
    return-void
.end method
