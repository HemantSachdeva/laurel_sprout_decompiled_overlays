.class final synthetic Laio;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Laiq;


# direct methods
.method public constructor <init>(Laiq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laio;->a:Laiq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Laio;->a:Laiq;

    invoke-virtual {v0}, Lba;->r()Lbc;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lba;->r()Lbc;

    move-result-object v1

    invoke-virtual {v1}, Lbc;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Laiq;->e()V

    return-void

    :cond_0
    sget-object v0, Laiq;->a:Laqd;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Not executing screen timeout runnable - activity is destroyed"

    invoke-virtual {v0, v2, v1}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
