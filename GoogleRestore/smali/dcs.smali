.class public final Ldcs;
.super Ldco;
.source "PG"


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldcg;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ldco;-><init>(Landroid/content/Context;Ldcg;)V

    iput-object p3, p0, Ldcs;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ldcs;->d:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Failed to set InstanceId to "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method protected final a(Ldcw;)V
    .locals 2

    iget-object v0, p0, Ldcs;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lact;->h()Landroid/os/Parcel;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v1}, Lact;->b(ILandroid/os/Parcel;)V

    return-void
.end method
