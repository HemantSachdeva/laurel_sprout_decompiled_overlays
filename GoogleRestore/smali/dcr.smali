.class public final Ldcr;
.super Ldco;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldcg;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ldco;-><init>(Landroid/content/Context;Ldcg;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    const/16 v1, 0x24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to set crash enabled to false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ldcw;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 3
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lacv;->a(Landroid/os/Parcel;Z)V

    .line 4
    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lact;->b(ILandroid/os/Parcel;)V

    return-void
.end method
