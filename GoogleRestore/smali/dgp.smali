.class public final Ldgp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ldgs;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldgq;
    .locals 7

    new-instance v6, Ldgq;

    iget-object v1, p0, Ldgp;->a:Ljava/lang/String;

    iget-object v2, p0, Ldgp;->b:Ljava/lang/String;

    iget-object v3, p0, Ldgp;->c:Ljava/lang/String;

    iget-object v4, p0, Ldgp;->d:Ldgs;

    iget v5, p0, Ldgp;->e:I

    .line 1
    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ldgq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldgs;I)V

    return-object v6
.end method
