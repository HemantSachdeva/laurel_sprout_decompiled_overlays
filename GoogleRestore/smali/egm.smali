.class final Legm;
.super Ldxe;
.source "PG"


# instance fields
.field public final a:Ldxd;

.field final synthetic b:Legn;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Legn;Ldxd;)V
    .locals 1

    iput-object p1, p0, Legm;->b:Legn;

    invoke-direct {p0}, Ldxe;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1
    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Legm;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Legm;->a:Ldxd;

    return-void
.end method


# virtual methods
.method public final a()Ldwz;
    .locals 3

    iget-object v0, p0, Legm;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Legm;->b:Legn;

    iget-object v0, v0, Legn;->c:Ldwy;

    check-cast v0, Lefh;

    iget-object v0, v0, Lefh;->b:Lefs;

    iget-object v0, v0, Lefs;->k:Ldzb;

    new-instance v1, Legl;

    .line 3
    invoke-direct {v1, p0}, Legl;-><init>(Legm;)V

    invoke-virtual {v0, v1}, Ldzb;->execute(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    sget-object v0, Ldwz;->a:Ldwz;

    return-object v0
.end method
