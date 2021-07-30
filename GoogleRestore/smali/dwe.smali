.class public final Ldwe;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldwd;

.field final b:Z


# direct methods
.method public constructor <init>(Ldwd;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const-string v0, "decompressor"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Ldwe;->a:Ldwd;

    iput-boolean p2, p0, Ldwe;->b:Z

    return-void
.end method
