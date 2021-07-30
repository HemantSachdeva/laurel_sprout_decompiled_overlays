.class public final Laci;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Labm;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public d:Ljava/lang/Runnable;

.field public final e:Lakh;

.field private final f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Labm;Lakh;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laci;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laci;->c:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Laci;->f:Landroid/os/Handler;

    iput-object p1, p0, Laci;->a:Labm;

    iput-object p2, p0, Laci;->e:Lakh;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lacg;)V
    .locals 2

    iget-object v0, p0, Laci;->c:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Laci;->d:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    new-instance p1, Lacf;

    .line 5
    invoke-direct {p1, p0}, Lacf;-><init>(Laci;)V

    iput-object p1, p0, Laci;->d:Ljava/lang/Runnable;

    iget-object p2, p0, Laci;->f:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    .line 6
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
