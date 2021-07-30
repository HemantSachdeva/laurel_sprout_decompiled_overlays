.class final Lt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lw;


# instance fields
.field final a:Ls;

.field final b:Lw;

.field c:I


# direct methods
.method public constructor <init>(Ls;Lw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lt;->c:I

    iput-object p1, p0, Lt;->a:Ls;

    iput-object p2, p0, Lt;->b:Lw;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, Lt;->a:Ls;

    .line 2
    invoke-virtual {v0, p0}, Ls;->a(Lw;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lt;->c:I

    iget-object v1, p0, Lt;->a:Ls;

    iget v1, v1, Ls;->h:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lt;->c:I

    iget-object v0, p0, Lt;->b:Lw;

    .line 1
    invoke-interface {v0, p1}, Lw;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
