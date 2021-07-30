.class final synthetic Lafz;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Function;


# instance fields
.field private final a:Lagb;


# direct methods
.method public constructor <init>(Lagb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafz;->a:Lagb;

    return-void
.end method


# virtual methods
.method public final andThen(Lj$/util/function/Function;)Lj$/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$$CC;->andThen$$dflt$$(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lafz;->a:Lagb;

    check-cast p1, Landroid/accounts/Account;

    iget-object v1, v0, Lagb;->k:Laox;

    iget-wide v2, v0, Lagb;->l:J

    :try_start_0
    new-instance v0, Laoq;

    invoke-direct {v0, v1, p1, v2, v3}, Laoq;-><init>(Laox;Landroid/accounts/Account;J)V

    sget-object v1, Land;->q:Lccv;

    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Laox;->a(Laow;I)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcsi;->f()Lcsi;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Laox;->a(Landroid/os/Bundle;Landroid/accounts/Account;)Lcsi;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Laox;->a:Lacw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to get app backup documents from Play."

    invoke-virtual {v0, v2, p1, v1}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Lcsi;->f()Lcsi;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final compose(Lj$/util/function/Function;)Lj$/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$$CC;->compose$$dflt$$(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    return-object p1
.end method
