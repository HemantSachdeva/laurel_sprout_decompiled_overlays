.class final Ldf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldh;

.field final synthetic b:Ldg;


# direct methods
.method public constructor <init>(Ldh;Ldg;)V
    .locals 0

    iput-object p1, p0, Ldf;->a:Ldh;

    iput-object p2, p0, Ldf;->b:Ldg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ldf;->a:Ldh;

    iget-object v0, v0, Ldh;->b:Ljava/util/HashMap;

    iget-object v1, p0, Ldf;->b:Ldg;

    iget-object v1, v1, Ldg;->a:Lba;

    .line 1
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
