.class public final Ldvp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ldvb;

.field public b:Ldvh;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Ldvb;->b:Ldvb;

    iput-object v0, p0, Ldvp;->a:Ldvb;

    .line 2
    sget-object v0, Ldvh;->a:Ldvh;

    iput-object v0, p0, Ldvp;->b:Ldvh;

    return-void
.end method
