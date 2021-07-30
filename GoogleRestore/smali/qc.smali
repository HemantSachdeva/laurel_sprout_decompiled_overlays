.class public abstract Lqc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lqd;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lqd;

    .line 1
    invoke-direct {v0}, Lqd;-><init>()V

    iput-object v0, p0, Lqc;->a:Lqd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lqc;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Lqz;
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lqc;->a:Lqd;

    .line 4
    invoke-virtual {v0, p1, p2}, Lqd;->a(II)V

    return-void
.end method

.method public abstract a(Lqz;I)V
.end method

.method public final a(Lvt;)V
    .locals 1

    iget-object v0, p0, Lqc;->a:Lqd;

    .line 6
    invoke-virtual {v0, p1}, Lqd;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lqc;->a:Lqd;

    .line 7
    invoke-virtual {v0}, Lqd;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iput-boolean p1, p0, Lqc;->b:Z

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 8
    const-string v0, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lqc;->a:Lqd;

    .line 2
    invoke-virtual {v0}, Lqd;->b()V

    return-void
.end method

.method public final b(II)V
    .locals 1

    iget-object v0, p0, Lqc;->a:Lqd;

    .line 5
    invoke-virtual {v0, p1, p2}, Lqd;->b(II)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lqc;->a:Lqd;

    .line 3
    invoke-virtual {v0, p1}, Lqd;->a(I)V

    return-void
.end method
