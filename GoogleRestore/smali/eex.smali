.class final Leex;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lefs;


# direct methods
.method public constructor <init>(Lefs;)V
    .locals 0

    iput-object p1, p0, Leex;->a:Lefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Leex;->a:Lefs;

    iget-object v0, v0, Lefs;->A:Ldvj;

    .line 1
    const/4 v1, 0x2

    const-string v2, "Entering SHUTDOWN state"

    invoke-virtual {v0, v1, v2}, Ldvj;->a(ILjava/lang/String;)V

    iget-object v0, p0, Leex;->a:Lefs;

    iget-object v0, v0, Lefs;->n:Lebo;

    .line 2
    sget-object v1, Ldvx;->e:Ldvx;

    invoke-virtual {v0, v1}, Lebo;->a(Ldvx;)V

    return-void
.end method
