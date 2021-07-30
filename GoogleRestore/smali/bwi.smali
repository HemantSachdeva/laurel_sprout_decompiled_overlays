.class final Lbwi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbqu;
.implements Lbqs;


# instance fields
.field final synthetic a:Lbwl;


# direct methods
.method public constructor <init>(Lbwl;)V
    .locals 0

    iput-object p1, p0, Lbwi;->a:Lbwl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lbwi;->a:Lbwl;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 2
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lbry;

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 3
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v2, p1}, Lbry;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lbry;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lbry;-><init>(Ljava/lang/String;)V

    .line 1
    :goto_1
    invoke-virtual {v0, v2}, Lbwl;->a(Lbry;)V

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Lbwi;->a:Lbwl;

    .line 5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbwl;->a(Lbry;)V

    iget-object p1, p0, Lbwi;->a:Lbwl;

    iget-object p1, p1, Lbwl;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lbwh;

    iget-object v0, p0, Lbwi;->a:Lbwl;

    .line 7
    invoke-direct {p1, v0}, Lbwh;-><init>(Lbwl;)V

    iget-object v0, p0, Lbwi;->a:Lbwl;

    iget-object v0, v0, Lbwl;->d:Lczw;

    .line 8
    invoke-static {p1, v0}, Ldab;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lczu;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lbte;->a(Lczu;)V

    :cond_0
    return-void
.end method
