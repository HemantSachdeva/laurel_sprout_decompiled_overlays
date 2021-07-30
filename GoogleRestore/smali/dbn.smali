.class final synthetic Ldbn;
.super Ljava/lang/Object;

# interfaces
.implements Ldft;


# instance fields
.field private final a:Ldbq;

.field private final b:Ldbj;


# direct methods
.method public constructor <init>(Ldbq;Ldbj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbn;->a:Ldbq;

    iput-object p2, p0, Ldbn;->b:Ldbj;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ldbn;->a:Ldbq;

    iget-object v1, p0, Ldbn;->b:Ldbj;

    iget-object v2, v1, Ldbj;->d:Ldbl;

    new-instance v3, Ldcb;

    invoke-direct {v3, v1, v0}, Ldcb;-><init>(Ldbj;Ldbk;)V

    invoke-interface {v2, v3}, Ldbl;->a(Ldbk;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
