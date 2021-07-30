.class final Law;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lba;


# direct methods
.method public constructor <init>(Lba;)V
    .locals 0

    iput-object p1, p0, Law;->a:Lba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Law;->a:Lba;

    iget-object v1, v0, Lba;->O:Lay;

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual {v0}, Lba;->F()Lay;

    move-result-object v0

    iget-boolean v0, v0, Lay;->h:Z

    :cond_0
    return-void
.end method
