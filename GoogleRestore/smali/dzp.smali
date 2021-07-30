.class final Ldzp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldzr;


# direct methods
.method public constructor <init>(Ldzr;)V
    .locals 0

    iput-object p1, p0, Ldzp;->a:Ldzr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ldzp;->a:Ldzr;

    iget-object v0, v0, Ldzr;->b:Lefx;

    check-cast v0, Leel;

    iget-object v1, v0, Leel;->c:Leen;

    iget-object v1, v1, Leen;->d:Ldvj;

    .line 1
    const/4 v2, 0x2

    const-string v3, "READY"

    invoke-virtual {v1, v2, v3}, Ldvj;->a(ILjava/lang/String;)V

    iget-object v1, v0, Leel;->c:Leen;

    iget-object v1, v1, Leen;->e:Ldzb;

    new-instance v2, Leei;

    .line 2
    invoke-direct {v2, v0}, Leei;-><init>(Leel;)V

    invoke-virtual {v1, v2}, Ldzb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
