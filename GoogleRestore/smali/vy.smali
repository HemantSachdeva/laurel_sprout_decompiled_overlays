.class final Lvy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lwc;


# direct methods
.method public constructor <init>(Lwc;)V
    .locals 0

    iput-object p1, p0, Lvy;->a:Lwc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvy;->a:Lwc;

    iget v1, v0, Lwc;->b:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lwc;->c:Z

    iget-object v0, v0, Lwc;->h:Lj;

    .line 1
    sget-object v1, Lh;->d:Lh;

    invoke-virtual {v0, v1}, Lj;->a(Lh;)V

    :cond_0
    iget-object v0, p0, Lvy;->a:Lwc;

    .line 2
    invoke-virtual {v0}, Lwc;->d()V

    return-void
.end method
