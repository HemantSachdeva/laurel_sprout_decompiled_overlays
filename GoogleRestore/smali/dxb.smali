.class public final Ldxb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/util/List;

.field public b:Ldvb;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Ldvb;->b:Ldvb;

    iput-object v0, p0, Ldxb;->b:Ldvb;

    return-void
.end method


# virtual methods
.method public final a()Ldxc;
    .locals 4

    new-instance v0, Ldxc;

    iget-object v1, p0, Ldxb;->a:Ljava/util/List;

    iget-object v2, p0, Ldxb;->b:Ldvb;

    iget-object v3, p0, Ldxb;->c:Ljava/lang/Object;

    .line 2
    invoke-direct {v0, v1, v2, v3}, Ldxc;-><init>(Ljava/util/List;Ldvb;Ljava/lang/Object;)V

    return-object v0
.end method
