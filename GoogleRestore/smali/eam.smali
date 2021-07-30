.class public final Leam;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldxj;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldxj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const-string v0, "registry"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Leam;->a:Ldxj;

    const-string p1, "pick_first"

    iput-object p1, p0, Leam;->b:Ljava/lang/String;

    return-void
.end method
