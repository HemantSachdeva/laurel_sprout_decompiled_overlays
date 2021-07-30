.class final synthetic Lddm;
.super Ljava/lang/Object;

# interfaces
.implements Lbom;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lddm;->a:Landroid/content/Context;

    iput-object p2, p0, Lddm;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a(Lbpi;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lddm;->a:Landroid/content/Context;

    iget-object v1, p0, Lddm;->b:Landroid/content/Intent;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Lbpi;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x192

    if-eq v2, v3, :cond_0

    return-object p1

    :cond_0
    invoke-static {v0, v1}, Lddp;->a(Landroid/content/Context;Landroid/content/Intent;)Lbpi;

    move-result-object p1

    sget-object v0, Lddr;->a:Ljava/util/concurrent/Executor;

    sget-object v1, Lddo;->a:Lbom;

    invoke-virtual {p1, v0, v1}, Lbpi;->a(Ljava/util/concurrent/Executor;Lbom;)Lbpi;

    move-result-object p1

    return-object p1
.end method
