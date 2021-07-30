.class final synthetic Ldfb;
.super Ljava/lang/Object;

# interfaces
.implements Lbom;


# instance fields
.field private final a:Ldfg;

.field private final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ldfg;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfb;->a:Ldfg;

    iput-object p2, p0, Ldfb;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Lbpi;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ldfb;->a:Ldfg;

    iget-object v1, p0, Ldfb;->b:Landroid/os/Bundle;

    invoke-virtual {p1}, Lbpi;->b()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lbpi;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Ldfg;->a(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ldfg;->b(Landroid/os/Bundle;)Lbpi;

    move-result-object p1

    sget-object v0, Lddr;->a:Ljava/util/concurrent/Executor;

    sget-object v1, Ldfe;->a:Lbph;

    invoke-virtual {p1, v0, v1}, Lbpi;->a(Ljava/util/concurrent/Executor;Lbph;)Lbpi;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method
