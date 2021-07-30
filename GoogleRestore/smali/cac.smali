.class public final Lcac;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbvt;


# instance fields
.field private final a:Lbvq;

.field private final b:Leip;

.field private final c:Landroid/os/StrictMode$OnVmViolationListener;

.field private final d:Lcbh;


# direct methods
.method public constructor <init>(Lbvr;Leip;Lbtr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lbzy;->a:Landroid/os/StrictMode$OnVmViolationListener;

    iput-object v0, p0, Lcac;->c:Landroid/os/StrictMode$OnVmViolationListener;

    .line 2
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    iput-object v0, p0, Lcac;->d:Lcbh;

    .line 3
    invoke-interface {p2}, Leip;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, v0}, Lbvr;->a(Ljava/util/concurrent/Executor;Lcbh;)Lbvq;

    move-result-object p1

    iput-object p1, p0, Lcac;->a:Lbvq;

    iput-object p2, p0, Lcac;->b:Leip;

    .line 4
    invoke-virtual {p3, p0}, Lbtr;->b(Lbts;)V

    return-void
.end method

.method static final synthetic a()V
    .locals 1

    sget-object v0, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method private b(Landroid/os/strictmode/Violation;)V
    .locals 3

    iget-object v0, p0, Lcac;->d:Lcbh;

    .line 12
    invoke-virtual {v0}, Lcbh;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 13
    :cond_0
    sget-object v0, Lepi;->c:Lepi;

    .line 14
    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    .line 15
    instance-of v1, p1, Landroid/os/strictmode/DiskReadViolation;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 16
    sget-object p1, Leph;->b:Leph;

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v2, v0, Ldjy;->b:Z

    :cond_1
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 18
    check-cast v1, Lepi;

    iget p1, p1, Leph;->e:I

    iput p1, v1, Lepi;->b:I

    iget p1, v1, Lepi;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v1, Lepi;->a:I

    goto :goto_0

    .line 19
    :cond_2
    instance-of v1, p1, Landroid/os/strictmode/DiskWriteViolation;

    if-eqz v1, :cond_4

    .line 20
    sget-object p1, Leph;->c:Leph;

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_3

    .line 21
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v2, v0, Ldjy;->b:Z

    :cond_3
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 22
    check-cast v1, Lepi;

    iget p1, p1, Leph;->e:I

    iput p1, v1, Lepi;->b:I

    iget p1, v1, Lepi;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v1, Lepi;->a:I

    goto :goto_0

    .line 23
    :cond_4
    instance-of p1, p1, Landroid/os/strictmode/CustomViolation;

    if-eqz p1, :cond_7

    .line 24
    sget-object p1, Leph;->d:Leph;

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_5

    .line 25
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v2, v0, Ldjy;->b:Z

    :cond_5
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 26
    check-cast v1, Lepi;

    iget p1, p1, Leph;->e:I

    iput p1, v1, Lepi;->b:I

    iget p1, v1, Lepi;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v1, Lepi;->a:I

    .line 27
    :goto_0
    sget-object p1, Lepj;->w:Lepj;

    .line 28
    invoke-virtual {p1}, Ldkd;->g()Ldjy;

    move-result-object p1

    iget-boolean v1, p1, Ldjy;->b:Z

    if-eqz v1, :cond_6

    .line 29
    invoke-virtual {p1}, Ldjy;->b()V

    iput-boolean v2, p1, Ldjy;->b:Z

    :cond_6
    iget-object v1, p1, Ldjy;->a:Ldkd;

    .line 30
    check-cast v1, Lepj;

    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Lepi;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v1, Lepj;->v:Lepi;

    iget v0, v1, Lepj;->a:I

    const/high16 v2, 0x1000000

    or-int/2addr v0, v2

    iput v0, v1, Lepj;->a:I

    .line 27
    invoke-virtual {p1}, Ldjy;->f()Ldkd;

    move-result-object p1

    check-cast p1, Lepj;

    iget-object v0, p0, Lcac;->a:Lbvq;

    .line 32
    invoke-virtual {v0, p1}, Lbvq;->a(Lepj;)V

    return-void

    .line 26
    :cond_7
    return-void
.end method


# virtual methods
.method final bridge synthetic a(Landroid/os/strictmode/Violation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcac;->b(Landroid/os/strictmode/Violation;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 10
    sget-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    sget-object v0, Lcaa;->a:Ljava/lang/Runnable;

    .line 11
    invoke-static {v0}, Lcqt;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 3

    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    .line 5
    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 6
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    iget-object v1, p0, Lcac;->b:Leip;

    .line 7
    invoke-interface {v1}, Leip;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcac;->c:Landroid/os/StrictMode$OnVmViolationListener;

    invoke-virtual {v0, v1, v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyListener(Ljava/util/concurrent/Executor;Landroid/os/StrictMode$OnVmViolationListener;)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    new-instance v0, Lbzz;

    .line 9
    invoke-direct {v0, p0}, Lbzz;-><init>(Lcac;)V

    invoke-static {v0}, Lcqt;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic d()V
    .locals 3

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    iget-object v1, p0, Lcac;->b:Leip;

    invoke-interface {v1}, Leip;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Lcab;

    invoke-direct {v2, p0}, Lcab;-><init>(Lcac;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyListener(Ljava/util/concurrent/Executor;Landroid/os/StrictMode$OnThreadViolationListener;)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method
