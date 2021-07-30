.class final Lbxv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbqv;


# instance fields
.field final synthetic a:Lbxw;


# direct methods
.method public constructor <init>(Lbxw;)V
    .locals 0

    iput-object p1, p0, Lbxv;->a:Lbxw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lbxv;->a:Lbxw;

    iget-object v0, v0, Lbxw;->i:Lbxz;

    .line 2
    sget-object v1, Lemc;->d:Lemc;

    invoke-virtual {v0, v1, p1}, Lbxz;->a(Lemc;Ljava/lang/String;)V

    iget-object v0, p0, Lbxv;->a:Lbxw;

    .line 3
    invoke-virtual {v0}, Lbxw;->a()V

    iget-object v0, p0, Lbxv;->a:Lbxw;

    iget-object v1, v0, Lbxw;->e:Lczw;

    new-instance v2, Lbxu;

    .line 4
    invoke-direct {v2, p0, p1}, Lbxu;-><init>(Lbxv;Ljava/lang/String;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    const-wide/16 v3, 0xa

    invoke-interface {v1, v2, v3, v4, p1}, Lczw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lczy;

    move-result-object p1

    iput-object p1, v0, Lbxw;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
