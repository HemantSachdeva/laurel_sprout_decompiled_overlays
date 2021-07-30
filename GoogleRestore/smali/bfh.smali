.class public final Lbfh;
.super Lbfe;
.source "PG"


# instance fields
.field private final a:Lbha;

.field private final b:Lbpl;


# direct methods
.method public constructor <init>(ILbha;Lbpl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbfe;-><init>(I)V

    iput-object p3, p0, Lbfh;->b:Lbpl;

    iput-object p2, p0, Lbfh;->a:Lbha;

    return-void
.end method


# virtual methods
.method public final a(Lbfx;Z)V
    .locals 2

    iget-object v0, p0, Lbfh;->b:Lbpl;

    iget-object v1, p1, Lbfx;->b:Ljava/util/Map;

    .line 11
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, v0, Lbpl;->a:Lbpp;

    new-instance v1, Lbfw;

    .line 12
    invoke-direct {v1, p1, v0}, Lbfw;-><init>(Lbfx;Lbpl;)V

    .line 13
    invoke-virtual {p2, v1}, Lbpi;->a(Lbox;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lbfh;->b:Lbpl;

    iget-object v1, p1, Lcom/google/android/gms/common/api/Status;->f:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    new-instance v1, Lbex;

    .line 3
    invoke-direct {v1, p1}, Lbex;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lbep;

    .line 2
    invoke-direct {v1, p1}, Lbep;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Lbpl;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lbfh;->b:Lbpl;

    .line 5
    invoke-virtual {v0, p1}, Lbpl;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final a(Lbgf;)[Lbdv;
    .locals 0

    iget-object p1, p0, Lbfh;->a:Lbha;

    iget-object p1, p1, Lbha;->b:[Lbdv;

    return-object p1
.end method

.method public final b(Lbgf;)Z
    .locals 0

    iget-object p1, p0, Lbfh;->a:Lbha;

    iget-boolean p1, p1, Lbha;->c:Z

    return p1
.end method

.method public final c(Lbgf;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbfh;->a:Lbha;

    iget-object p1, p1, Lbgf;->b:Lben;

    iget-object v1, p0, Lbfh;->b:Lbpl;

    .line 6
    invoke-virtual {v0, p1, v1}, Lbha;->a(Lbem;Lbpl;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p0, p1}, Lbfh;->a(Ljava/lang/Exception;)V

    return-void

    .line 10
    :catch_1
    move-exception p1

    .line 8
    invoke-static {p1}, Lbfj;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lbfh;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 6
    :catch_2
    move-exception p1

    .line 10
    throw p1
.end method
