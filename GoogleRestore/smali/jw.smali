.class final Ljw;
.super Lgk;
.source "PG"


# instance fields
.field final synthetic a:Ljx;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Ljx;)V
    .locals 0

    iput-object p1, p0, Ljw;->a:Ljx;

    invoke-direct {p0}, Lgk;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljw;->b:Z

    iput p1, p0, Ljw;->c:I

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget v0, p0, Ljw;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljw;->c:I

    iget-object v1, p0, Ljw;->a:Ljx;

    iget-object v1, v1, Ljx;->a:Ljava/util/ArrayList;

    .line 1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljw;->a:Ljx;

    iget-object v0, v0, Ljx;->b:Lgj;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lgj;->b()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ljw;->c:I

    iput-boolean v0, p0, Ljw;->b:Z

    iget-object v1, p0, Ljw;->a:Ljx;

    iput-boolean v0, v1, Ljx;->c:Z

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Ljw;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljw;->b:Z

    iget-object v0, p0, Ljw;->a:Ljx;

    iget-object v0, v0, Ljx;->b:Lgj;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lgj;->c()V

    :cond_1
    return-void
.end method
