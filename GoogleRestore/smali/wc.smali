.class public final Lwc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ll;


# static fields
.field public static final f:Lwc;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Landroid/os/Handler;

.field public final e:Ljava/lang/Runnable;

.field final g:Lvz;

.field public final h:Lj;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwc;

    .line 1
    invoke-direct {v0}, Lwc;-><init>()V

    sput-object v0, Lwc;->f:Lwc;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lwc;->a:I

    iput v0, p0, Lwc;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwc;->c:Z

    iput-boolean v0, p0, Lwc;->i:Z

    new-instance v0, Lj;

    .line 2
    invoke-direct {v0, p0}, Lj;-><init>(Ll;)V

    iput-object v0, p0, Lwc;->h:Lj;

    new-instance v0, Lvy;

    .line 3
    invoke-direct {v0, p0}, Lvy;-><init>(Lwc;)V

    iput-object v0, p0, Lwc;->e:Ljava/lang/Runnable;

    new-instance v0, Lvz;

    .line 4
    invoke-direct {v0, p0}, Lvz;-><init>(Lwc;)V

    iput-object v0, p0, Lwc;->g:Lvz;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget v0, p0, Lwc;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lwc;->a:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lwc;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwc;->h:Lj;

    .line 7
    sget-object v1, Lh;->b:Lh;

    invoke-virtual {v0, v1}, Lj;->a(Lh;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwc;->i:Z

    :cond_0
    return-void
.end method

.method public final ab()Lj;
    .locals 1

    iget-object v0, p0, Lwc;->h:Lj;

    return-object v0
.end method

.method final c()V
    .locals 2

    iget v0, p0, Lwc;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lwc;->b:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lwc;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwc;->h:Lj;

    .line 5
    sget-object v1, Lh;->c:Lh;

    invoke-virtual {v0, v1}, Lj;->a(Lh;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwc;->c:Z

    return-void

    :cond_0
    iget-object v0, p0, Lwc;->d:Landroid/os/Handler;

    iget-object v1, p0, Lwc;->e:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method final d()V
    .locals 2

    iget v0, p0, Lwc;->a:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lwc;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwc;->h:Lj;

    .line 8
    sget-object v1, Lh;->e:Lh;

    invoke-virtual {v0, v1}, Lj;->a(Lh;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwc;->i:Z

    :cond_0
    return-void
.end method
