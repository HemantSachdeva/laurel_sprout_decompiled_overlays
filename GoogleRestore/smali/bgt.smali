.class final Lbgt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbgv;


# direct methods
.method public constructor <init>(Lbgv;)V
    .locals 0

    iput-object p1, p0, Lbgt;->a:Lbgv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbgt;->a:Lbgv;

    iget-object v0, v0, Lbgv;->e:Lbgi;

    .line 1
    new-instance v1, Lbds;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lbds;-><init>(I)V

    invoke-virtual {v0, v1}, Lbgi;->b(Lbds;)V

    return-void
.end method
