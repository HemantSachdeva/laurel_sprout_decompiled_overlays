.class public final Ldxu;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ldxv;

.field public b:Ldxv;

.field public c:Ldxw;

.field public d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldxx;
    .locals 7

    new-instance v6, Ldxx;

    iget-object v1, p0, Ldxu;->c:Ldxw;

    iget-object v2, p0, Ldxu;->d:Ljava/lang/String;

    iget-object v3, p0, Ldxu;->a:Ldxv;

    iget-object v4, p0, Ldxu;->b:Ldxv;

    iget-boolean v5, p0, Ldxu;->e:Z

    .line 1
    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ldxx;-><init>(Ldxw;Ljava/lang/String;Ldxv;Ldxv;Z)V

    return-object v6
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldxu;->e:Z

    return-void
.end method
