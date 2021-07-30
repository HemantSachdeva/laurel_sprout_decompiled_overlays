.class abstract Lsy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/Iterator;
.implements Lsz;


# instance fields
.field a:Lsw;

.field b:Lsw;


# direct methods
.method public constructor <init>(Lsw;Lsw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsy;->a:Lsw;

    iput-object p1, p0, Lsy;->b:Lsw;

    return-void
.end method

.method private final a()Lsw;
    .locals 2

    iget-object v0, p0, Lsy;->b:Lsw;

    iget-object v1, p0, Lsy;->a:Lsw;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, v0}, Lsy;->a(Lsw;)Lsw;

    move-result-object v0

    return-object v0

    .line 0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract a(Lsw;)Lsw;
.end method

.method public abstract b(Lsw;)Lsw;
.end method

.method public final c(Lsw;)V
    .locals 1

    iget-object v0, p0, Lsy;->a:Lsw;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lsy;->b:Lsw;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lsy;->b:Lsw;

    iput-object v0, p0, Lsy;->a:Lsw;

    :cond_0
    iget-object v0, p0, Lsy;->a:Lsw;

    if-ne v0, p1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lsy;->b(Lsw;)Lsw;

    move-result-object v0

    iput-object v0, p0, Lsy;->a:Lsw;

    :cond_1
    iget-object v0, p0, Lsy;->b:Lsw;

    if-ne v0, p1, :cond_2

    .line 3
    invoke-direct {p0}, Lsy;->a()Lsw;

    move-result-object p1

    iput-object p1, p0, Lsy;->b:Lsw;

    :cond_2
    return-void
.end method

.method public final forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Iterator$$CC;->forEachRemaining$$dflt$$(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lsy;->b:Lsw;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lsy;->b:Lsw;

    invoke-direct {p0}, Lsy;->a()Lsw;

    move-result-object v1

    iput-object v1, p0, Lsy;->b:Lsw;

    return-object v0
.end method

.method public final remove()V
    .locals 0

    invoke-static {p0}, Lj$/util/Iterator$$CC;->remove$$dflt$$(Ljava/util/Iterator;)V

    return-void
.end method
